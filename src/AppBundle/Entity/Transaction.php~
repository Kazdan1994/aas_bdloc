<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Transaction
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\TransactionRepository")
 */
class Transaction
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
     * @ORM\Column(name="transactioncol", type="string", length=255)
     */
    private $transactioncol;


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
     * Set transactioncol
     *
     * @param string $transactioncol
     * @return Transaction
     */
    public function setTransactioncol($transactioncol)
    {
        $this->transactioncol = $transactioncol;

        return $this;
    }

    /**
     * Get transactioncol
     *
     * @return string 
     */
    public function getTransactioncol()
    {
        return $this->transactioncol;
    }
}
