<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;



class PanierController extends Controller
{
     /**
     * @Route("/panier", name="panier")
     */
    public function panierAction()
    {
        return $this->render('default/panier.html.twig');
    }

    public function panier(Request $request)
    {
        
    }
}

        // {% for comment in story.comments %}    
        //     <tr>
        //         <article class="article_panier">
        //         <img alt="article" src="#" class="image_article"/>
        //         <p class="titre_article">Titre de la bédé 1</p>
        //         <button class="glyphicon glyphicon-remove-circle bt_suppr"></button>
        //         <p class="sup_article">Retirer du panier</p>
        //         </article>
        //     </tr>
            
        // {% endfor %} 
