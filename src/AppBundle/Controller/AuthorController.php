<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class AuthorController extends Controller
{
     /**
     * @Route("auteur/{slug}",requirements={"slug":"[a-z0-9-]+"}, name="author")
     */
    public function authorAction($slug, Request $request)
    {
              
        //on récupére le repository de Author
        $authorRepo = $this->get("doctrine")->getRepository("AppBundle:Author");

          $author = $authorRepo->findOneBySlug($slug);
        
        if (!$author)
        {
            throw $this->createNotFoundException("Oups y a un problème lier à l'auteur !");
	}
                
                
        $params = array(
            'author' => $author,
        );
        return $this->render('default/author.html.twig', $params);
    }
}

