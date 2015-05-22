<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class BdController extends Controller
{
     /**
     * @Route("/liste_bd/{page}",requirements={"page":"\d+"}, defaults={"page":1}, name="liste_bd")
     */
    public function listBdAction(Request $request, $page)
    {
        $queryString = ('?'.$request->getQueryString()); //On récupère le filtre de l'url

        //Array vide si l'url n'a pas de filtres
        $checkboxCategories =  array();


        if (!empty ($_GET['categories'])) //Si les filtres sont présent dans l'url
        {
            //On récupère les catégories dans la variable $checkboxCategories
            $checkboxCategories = $_GET['categories'];
        }
        
        //on récupére le repository de Book
        $storyRepo = $this->get("doctrine")->getRepository("AppBundle:Book");
        //récupère toutes les BD de la bdd
        $paginationResults = $storyRepo->findPaginated($page);
        if (!$paginationResults) 
        {
            throw $this->createNotFoundException();
        }

        $categRepo = $this->get("doctrine")->getRepository("AppBundle:Categorie");

        $CategoriesArray = $categRepo->findCategorie();

        //on va passer ces données à twig...
        $params = array(
            "paginationResults" => $paginationResults,
            "categories"=> $CategoriesArray,
            "queryString" => $queryString,
            "checkboxCategories" => $checkboxCategories
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
 
     
