<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response; 

use AppBundle\Entity\Categorie;
use AppBundle\Entity\Commande;
use AppBundle\Entity\User;
use AppBundle\Entity\Book;

class PanierController extends Controller
{
     /**
     * @Route("/panier", name="panier")
     */
    public function panierAction()
    {
        $manager = $this->container->get('doctrine')->getManager();

        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        
        $user = $this->getUser();
        $com = $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));

        $books = $com->getBooks();

        $params = array(
            'books' => $books,
        );

        return $this->render('default/panier.html.twig', $params);
    }


    /**
    *@Route("/supprPanier/{id}", name="supprPanier")
    */
    public function supprPanier($id)
    {
        $manager = $this->container->get('doctrine')->getManager();

        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        $bookRepo = $this->container->get('doctrine')->getRepository("AppBundle:Book");

        $user = $this->getUser();

        $com = $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));

        $book= $bookRepo->find($id); // on récupère le livre qui est dans la commande
        
        //supprimer livre commande
        if($com->hasbook($book)) 
        {
            $com->removeBook($book);
            
            //incrémenter stock +1
            $stock = $book->getStock();
            $book->setStock($stock+1);
            $manager->persist($book);
            $manager->persist($com);
            $manager->flush();
        }
        else
        {
            var_dump("une erreur est survenue; il semblerait que le livre que vous souhaitez supprimer n'est pas dans votre panier");
        }

        return new Response($book->getStock());
        //supprimer livre Panier -> ajax ?
    }
}

        
