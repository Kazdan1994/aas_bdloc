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
        /******************* PARTIE FILTRE checkbox ***********************/
        $queryString = ('?' . $request->getQueryString()); //On récupère le filtre de l'url

        //Array vide si l'url n'a pas de filtres
        $checkboxCategories = array();

        if (!empty ($_GET['categories'])) //Si les filtres sont présent dans l'url
        {
            //On récupère les catégories dans la variable $checkboxCategories
            $checkboxCategories = $_GET['categories'];
        }
        /******************* PARTIE FILTRE checkbox ***********************/


        /******************* PARTIE mots-clés ***********************/
        $MotsCle = '';

        if (!empty($_GET['input_mots_cles'])) //Si les filtre mots-clés est présent dans l'url
        {
            $MotsCle = $_GET['input_mots_cles'];
        }

        /******************* PARTIE mots-clés ***********************/

        /******************* FILTRES PARTIE trier ***********************/
       /*
        $select_tri = '';

        if (!empty($_GET['select_trier'])) //Si le filtre select est activé
        {
            $select_tri = $_GET['select_trier'];
        }
       */
        /******************* FILTRES PARTIE trier ***********************/



        /******************* FILTRES PARTIE résultat ***********************/

        $select_resultat = '';

            if (!empty($_GET['cinq_resultats']))
            {
                $select_resultat = $_GET['cinq_resultats'];
            }

            if (!empty($_GET['dix_resultats']))
            {
                $select_resultat = $_GET['dix_resultats'];
            }

            if (!empty($_GET['vingt_resultats']))
            {
                $select_resultat = $_GET['vingt_resultats'];
            }

        /******************* FILTRES PARTIE résultat ***********************/
        
        //on récupére le repository de Book
        $storyRepo = $this->get("doctrine")->getRepository("AppBundle:Book");
        //récupère toutes les BD de la bdd
        $paginationResults = $storyRepo->findPaginated($page);

        $categRepo = $this->get("doctrine")->getRepository("AppBundle:Categorie");

        $CategoriesArray = $categRepo->findCategorie();

        //on va passer ces données à twig...
        $params = array(
            "paginationResults" => $paginationResults,
            "categories"=> $CategoriesArray,
            "queryString" => $queryString,
            "checkboxCategories" => $checkboxCategories,
            "MotsCle" => $MotsCle,
            "select_resultat" => $select_resultat,
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
 
     
