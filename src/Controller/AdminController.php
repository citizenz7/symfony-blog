<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(ArticleRepository $repo, Request $request, PaginatorInterface $paginator)
    {
        $donnees = $repo->findAll();

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


}
