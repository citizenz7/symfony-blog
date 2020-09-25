<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin/blog", name="admin_blog")
     */
    public function indexBlog(ArticleRepository $repo, Request $request, PaginatorInterface $paginator)
    {
        $donnees = $repo->findAll();

        $articles = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            3 // nombre d'éléments par page
        );

        return $this->render('admin/blog/index.html.twig', [
            'controller_name' => 'BlogController',
            'articles' => $articles,
        ]);
    }

    /**
     * @Route("/admin/categories", name="admin_categories")
     */
    public function indexCategories(CategoryRepository $repo, Request $request, PaginatorInterface $paginator)
    {
        $donnees = $repo->findAll();

        $categories = $paginator->paginate(
            $donnees, // on passe les données
            $request->query->getInt('page', 1), // N° de la page en cours, 1 par défaut
            3 // nombre d'éléments par page
        );

        return $this->render('admin/categories/index.html.twig', [
            'controller_name' => 'CategoryController',
            'categories' => $categories,
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
