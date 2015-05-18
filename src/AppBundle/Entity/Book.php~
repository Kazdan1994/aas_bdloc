<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Book
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\BookRepository")
 */
class Book
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
     * @var integer
     *
     * @ORM\Column(name="numVolume", type="integer")
     */
    private $numVolume;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=255)
     */
    private $titre;

    /**
     * @var string
     *
     * @ORM\Column(name="editeur", type="string", length=255)
     */
    private $editeur;

    /**
     * @var string
     *
     * @ORM\Column(name="reference", type="string", length=45)
     */
    private $reference;

    /**
     * @var string
     *
     * @ORM\Column(name="couverture", type="string", length=255)
     */
    private $couverture;

    /**
     * @var integer
     *
     * @ORM\Column(name="nbPage", type="integer")
     */
    private $nbPage;

    /**
     * @var integer
     *
     * @ORM\Column(name="stock", type="integer")
     */
    private $stock;

    /**
     * @var string
     *
     * @ORM\Column(name="slug", type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Serie", inversedBy="books")
     * @ORM\JoinColumn(name="serie_id", referencedColumnName="id")
     */
    private $serie;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Author", inversedBy="books")
     * @ORM\JoinColumn(name="author_id", referencedColumnName="id")
     */
    private $author;

    
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
     * Set numVolume
     *
     * @param integer $numVolume
     * @return Book
     */
    public function setNumVolume($numVolume)
    {
        $this->numVolume = $numVolume;

        return $this;
    }

    /**
     * Get numVolume
     *
     * @return integer 
     */
    public function getNumVolume()
    {
        return $this->numVolume;
    }

    /**
     * Set titre
     *
     * @param string $titre
     * @return Book
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set editeur
     *
     * @param string $editeur
     * @return Book
     */
    public function setEditeur($editeur)
    {
        $this->editeur = $editeur;

        return $this;
    }

    /**
     * Get editeur
     *
     * @return string 
     */
    public function getEditeur()
    {
        return $this->editeur;
    }

    /**
     * Set reference
     *
     * @param string $reference
     * @return Book
     */
    public function setReference($reference)
    {
        $this->reference = $reference;

        return $this;
    }

    /**
     * Get reference
     *
     * @return string 
     */
    public function getReference()
    {
        return $this->reference;
    }

    /**
     * Set couverture
     *
     * @param string $couverture
     * @return Book
     */
    public function setCouverture($couverture)
    {
        $this->couverture = $couverture;

        return $this;
    }

    /**
     * Get couverture
     *
     * @return string 
     */
    public function getCouverture()
    {
        return $this->couverture;
    }

    /**
     * Set nbPage
     *
     * @param integer $nbPage
     * @return Book
     */
    public function setNbPage($nbPage)
    {
        $this->nbPage = $nbPage;

        return $this;
    }

    /**
     * Get nbPage
     *
     * @return integer 
     */
    public function getNbPage()
    {
        return $this->nbPage;
    }

    /**
     * Set stock
     *
     * @param integer $stock
     * @return Book
     */
    public function setStock($stock)
    {
        $this->stock = $stock;

        return $this;
    }

    /**
     * Get stock
     *
     * @return integer 
     */
    public function getStock()
    {
        return $this->stock;
    }

    /**
     * Set slug
     *
     * @param string $slug
     * @return Book
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * Get slug
     *
     * @return string 
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set serie
     *
     * @param \AppBundle\Entity\Serie $serie
     * @return Book
     */
    public function setSerie(\AppBundle\Entity\Serie $serie = null)
    {
        $this->serie = $serie;

        return $this;
    }

    /**
     * Get serie
     *
     * @return \AppBundle\Entity\Serie 
     */
    public function getSerie()
    {
        return $this->serie;
    }
}
