<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * categorie
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\categorieRepository")
 */
class categorie
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nomCat", type="string", length=255)
     */
    private $nomCat;

    /**
     * @var string
     *
     * @ORM\Column(name="slug", type="string", length=255)
     */
    private $slug;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nomCat
     *
     * @param string $nomCat
     * @return categorie
     */
    public function setNomCat($nomCat)
    {
        $this->nomCat = $nomCat;

        return $this;
    }

    /**
     * Get nomCat
     *
     * @return string 
     */
    public function getNomCat()
    {
        return $this->nomCat;
    }
}
