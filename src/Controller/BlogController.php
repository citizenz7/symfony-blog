<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Comment;
use App\Form\ArticleType;
use App\Form\CommentType;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ResetType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class BlogController extends AbstractController
{
    // Liste des articles sur la partie publique
    /**
     * @Route("/blog", name="blog")
     */
    public function index(ArticleRepository $repo, Request $request, PaginatorInterface $paginator)
    {

        //$donnees = $repo->findAll();
        $donnees = $repo->findArticles();

        $articles = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            3 // nombre d'éléments par page
        );

        return $this->render('blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles,
        ]);
    }

    // Page d'accueil publique
    /**
     * @Route("/", name="home")
     */
    public function home() {
        return $this->render('blog/home.html.twig', [
            'title' => "Bienvenue sur la page du Dasboard ACS 2020",
        ]);
    }

    // la fonction qui reçoit l'ordre de creation d'article est placée AVANT la fonction d'affichage show()
    // ceci afin de prioriser la fonction create()
    // il peut en effet y avoir des "confusion de route" entre /blog/{id} et /blog/new
    // car Symfony peut penser que new (dans /blog/new) est en en fait un id (dans /blog/{id})

    // Ajout / Edition des articles dans la partie Admin
    /**
     * @Route("/admin/blog/new", name="blog_create")
     * @Route("/admin/blog/{id}/edit", name="blog_edit")
     */
    public function form(Article $article = null, Request $request, EntityManagerInterface $manager) {

        if(!$article) {
            $article = new Article();
        }

        //$article->setTitle("Le super titre")
        //    ->setContent("Le contenu de l'article");

        // Création du formulaire
        //$form = $this->createFormBuilder($article)
        //    ->add('title')
        //    ->add('content')
        //    ->add('images')
        //    ->getForm();

        // cette seule ligne permet de créer le formulaire
        // avec le nom de la class du formulaire (ArticleType::class) et à l'entité liée ($article)
        $form = $this->createForm(ArticleType::class, $article);

        // Pour traiter les données du formulaire, on doit appeler la méthode handleRequest()
        // qui vont être analysées
        $form->handleRequest($request);

        // Si le formulaire est "soumis" et qu'en plus tous les champs sont validés, on envoie
        if($form->isSubmitted() && $form->isValid()) {

            // UPLOAD D'IMAGE
            /** @var UploadedFile $uploadedFile */
            $uploadedFile = $form['img']->getData();

            if ($uploadedFile) {
                $destination = $this->getParameter('kernel.project_dir').'/public/uploads/article_image';

                $originalFilename = pathinfo($uploadedFile->getClientOriginalName(), PATHINFO_FILENAME);
                $newFilename = $originalFilename.'-'.uniqid().'.'.$uploadedFile->guessExtension();

                $uploadedFile->move(
                    $destination,
                    $newFilename
                );
                $article->setImages($newFilename);
            }

            // si c'est un nouvel article (qui donc n'a pas encore d'ID), on met une date
            // sinon (édition), on ne touche pas à la date
            if(!$article->getID()) {
                $article->setCreatedAt(new \DateTime());
            }

            // On fait "persister" les données de $article
            // en fait, on dit à Doctrine qu'on veut (éventuellement) enregistrer le produit (pas encore de requêtes)
            $manager->persist($article);

            // puis on les envoit dans la base avec flush()
            $manager->flush();

            // une fois l'enregistrement fait, on redirige vers show avec l'ID de l'article
            return $this->redirectToRoute('blog_show', ['id' => $article->getId()]);
        }

        // si on a un ID (not null), c'est qu'on fait une édition
        // si on n'a pas d'ID, l'article n'existe pas et donc on va passer en mode création
        return $this->render('admin/blog/create.html.twig', [
            'formArticle' => $form->createView(), 
            'editMode' => $article->getId() !== null
        ]);
    }

    // Vue dans la partie publique qui permet d'afficher un article
    /**
     * @Route("/blog/{id}", name="blog_show")
     */
    public function show(Article $article, Request $request, EntityManagerInterface $manager) {

        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {
            $comment->setCreatedAt(new \DateTime())
                    ->setArticle($article);
            $manager->persist($comment);
            $manager->flush();

            return $this->redirectToRoute('blog_show', [
                'id' => $article->getId()
            ]);
        }
    
        return $this->render('blog/show.html.twig', [
          'article' => $article,
          'commentForm' => $form->createView()
      ]);
    }

    // Suppression d'article
    /**
     * @Route("/admin/blog/{id}/delete", name="blog_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Article $article): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();

            $destination = $this->getParameter('kernel.project_dir').'/public/uploads/article_image/';
            unlink($destination.$article->getImages());

            $entityManager->remove($article);
            $entityManager->flush();
        }

        return $this->redirectToRoute('blog');
    }

}
