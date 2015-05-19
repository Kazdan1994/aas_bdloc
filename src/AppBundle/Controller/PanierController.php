<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class PanierController extends Controller
{
     /**
     * @Route("/panier", name="panier")
     */
    public function listBdAction()
    {
        return $this->render('default/panier.html.twig');
    }
}

    // {% for comment in story.comments %}    
    //         <tr>
    //             <article class="article_panier">
    //                 <img alt="article" src="#" class="image_article"/>
    //                 <p class="titre_article">Titre de la bédé 1</p>
    //                 <button class="glyphicon glyphicon-remove-circle bt_suppr"></button>
    //                 <p class="sup_article">Retirer du panier</p>
    //             </article>
    //         </tr>
    //         <button id="bt_valider">Valider ce panier</button>
    //         <button id="bt_back">Continuer à bouquiner</button>
    // // {% endfor %} 