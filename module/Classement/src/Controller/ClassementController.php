<?php

namespace Classement\Controller;

use Application\Entity\Participant;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ClassementController extends AbstractActionController
{

    /**
     * Entity manager.
     * @var Doctrine\ORM\EntityManager
     */
    private $entityManager;

    // Constructor method is used to inject dependencies to the controller.
    public function __construct($entityManager)
    {
        $this->entityManager = $entityManager;
    }

    public function indexAction()
    {
        $rankings = [];


        $general = $this->entityManager->getRepository(Participant::class)->findBy(
            [  ],
            ['duration'=>'ASC']);
        $rankings['general'] = $general;


        $hommes = $this->entityManager->getRepository(Participant::class)->findBy(
            [ 'sex' => 'male' ],
            ['duration'=>'ASC']);
        $rankings['hommes'] = $hommes;

        $femmes = $this->entityManager->getRepository(Participant::class)->findBy(
            [ 'sex' => 'female' ],
            ['duration'=>'ASC']);
        $rankings['femmes'] = $femmes;

        return new ViewModel(
            array(
                "classements" => $rankings
            )
        );
    }
}
