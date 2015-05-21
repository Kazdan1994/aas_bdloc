<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use AppBundle\Entity\Categorie;
use AppBundle\Entity\User;
use AppBundle\Entity\Book;



class CommandeController extends Controller
{
     /**
     * @Route("/ajoutPanier/{id}", name="ajoutPanier")
     */
    public function ajoutPanier($id, ObjectManager $manager)
    {

        $bookRepo = $this->container->get('doctrine')->getRepository("AppBundle:Book");

        // création commande+ son statut
        $com = new Commande();
        
        //on récupère le livre pour l'ajouter à la commande
        $book= $bookRepo->find($id);
        $com->addBook($book);

        //idem pour le user
        $user = $this->getUser();
        $com->setUser($user);
              
        //ajout commande BDD
        $manager->persist($com);
        $manager->flush();

        $params = array();
        
        return $this->render('default/liste_BD.html.twig', $params);;
    }
}