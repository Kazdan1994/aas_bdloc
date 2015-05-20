<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BdController extends Controller
{
     /**
     * @Route("/liste_bd{page}",requirements={"page":"\d+"}, defaults={"page":1}, name="liste_bd")
     */
    public function listBdAction($page)
    {        
        
        //on récupére le repository de Book
        $storyRepo = $this->get("doctrine")->getRepository("AppBundle:Book");
        //récupère toutes les BD de la bdd
        $paginationResults = $storyRepo->findPaginated($page);
        if (!$paginationResults) {
            throw $this->createNotFoundException();
        }

        $categRepo = $this->get("doctrine")->getRepository("AppBundle:Categorie");

        $CategoriesArray = $categRepo->findCategorie();

        //on va passer ces données à twig...
        $params = array(
            "paginationResults" => $paginationResults,
            "categories"=> $CategoriesArray,
        );

        return $this->render('default/liste_bd.html.twig', $params);
        
    }

     /**
     * @Route("details/{slug}",requirements={"slug":"[a-z0-9-]+"}, name="details_bd")
     */
    public function detailsBdAction($slug, \Symfony\Component\HttpFoundation\Request $request)
    {
              
        //on récupére le repository de Book
        $storyRepo = $this->get("doctrine")->getRepository("AppBundle:Book");

          $book = $storyRepo->findOneBySlug($slug);
        
        if (!$book)
        {
			     throw $this->createNotFoundException("Oupsie !");
		    }
                
                
        $params = array(
            'book' => $book,
        );
        return $this->render('default/details_bd.html.twig', $params);
        
    }
}
 
     
