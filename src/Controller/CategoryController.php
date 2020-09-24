<?php

namespace App\Controller;

use App\Entity\Category;
use App\Form\CategoryType;
use App\Repository\CategoryRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CategoryController extends AbstractController
{
    /**
     * @Route("/category", name="category")
     */
    public function index(CategoryRepository $repo, Request $request, PaginatorInterface $paginator)
    {
        $donnees = $repo->findAll();

        $categories = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            4 // nombre d'éléments par page
        );

        return $this->render('category/index.html.twig', [
            'controller_name' => 'CategoryController',
            'categories' => $categories,
        ]);
    }

     // la fonction qui reçoit l'ordre de creation d'une catégorie est placée AVANT la fonction d'affichage show()
    // ceci afin de prioriser la fonction create()
    // il peut en effet y avoir des "confusion de route" entre /blog/{id} et /blog/new
    // car Symfony peut penser que new (dans /blog/new) est en en fait un id (dans /blog/{id})

    /**
     * @Route("/category/new", name="category_create")
     * @Route("/category/{id}/edit", name="category_edit")
     */
    public function form(Category $category = null, Request $request, EntityManagerInterface $manager) {

        if(!$category) {
            $category = new Category();
        }

        // cette seule ligne permet de créer le formulaire
        // avec le nom de la class du formulaire (CategoryType::class) et à l'entité liée ($category)
        $form = $this->createForm(CategoryType::class, $category);

        // Pour traiter les données du formulaire, on doit appeler la méthode handleRequest()
        // qui vont être analysées
        $form->handleRequest($request);

        // Si le formulaire est "soumis" et qu'en plus tous les champs sont validés, on envoie
        if($form->isSubmitted() && $form->isValid()) {

            // On fait "persister" les données de $category
            // en fait, on dit à Doctrine qu'on veut (éventuellement) enregistrer le produit (pas encore de requêtes)
            $manager->persist($category);

            // puis on les envoit dans la base avec flush()
            $manager->flush();

            // une fois l'enregistrement fait, on redirige vers show avec l'ID de la catégorie
            return $this->redirectToRoute('category_show', ['id' => $category->getId()]);
        }

        // si on a un ID (not null), c'est qu'on fait une édition
        // si on n'a pas d'ID, la catégorie n'existe pas et donc on va passer en mode création
        return $this->render('category/create.html.twig', [
            'formCategory' => $form->createView(), 
            'editMode' => $category->getId() !== null
        ]);
    }


    // Vue qui permet d'afficher une catégorie
    /**
    * @Route("/category/{id}", name="category_show")
    */
    public function show(Category $category, EntityManagerInterface $manager) {
    
        return $this->render('category/show.html.twig', [
            'category' => $category
        ]);
    }
    
    // Suppression d'une catégorie'
    /**
     * @Route("/category/{id}/delete", name="category_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Category $category): Response
    {
        if ($this->isCsrfTokenValid('delete'.$category->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->remove($category);
            $entityManager->flush();
        }

        return $this->redirectToRoute('category');
    }
}
