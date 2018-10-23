<?php

namespace Participant\Controller;

use Application\Entity\Participant;
use Doctrine\DBAL\Exception\UniqueConstraintViolationException;
use Doctrine\ORM\EntityManager;
use Zend\Http\Request;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;

class ParticipantController extends AbstractActionController
{

    /** @var EntityManager $entityManager */
    private $entityManager;
    private $formElementManager;

    public function __construct($entityManager , $formElementManager )
    {
        $this->entityManager = $entityManager;
        $this->formElementManager = $formElementManager;
    }

    public function indexAction()
    {
        return new ViewModel();
    }

    public function listAction()
    {

        $participants = $this->entityManager->getRepository('Application\Entity\Participant')->findAll();

        return new ViewModel(
            array(
                "participants" => $participants
            )
        );

    }

    public function participantFormAction(){

        /** @var \Zend\Form\Form $form */
        $form = $this->formElementManager->get('participant_form');

        $id = (int) $this->params()->fromRoute('id', 0);

        /** @var \Application\Entity\Participant $participant */
        if (0 !== $id) {

            try {
                $participant = $this->entityManager->getRepository('Application\Entity\Participant')->find($id);
                $form->bind($participant);
            } catch (\Exception $e) {
                return $this->redirect()->toRoute('participant/list');
            }
        }

        /** @var Request $request */
        $request = $this->getRequest();

        if (!$request->isPost()) {
            return ['form' => $form, 'action' =>''];
        }

        $form->setData($request->getPost());

        if (!$form->isValid()) {
            return ['form' => $form];
        }else{

            $participant = $form->getData();

            // Inutile une fois le champ ajouté
            /*$event = $this->entityManager->getRepository('Application\Entity\Event')->find($participant->getEvent()->getId());
            $participant->setEvent($event);*/

            $this->entityManager->persist($participant);

            try{
                $this->entityManager->flush();
            } catch (UniqueConstraintViolationException $e){

                // $this->flashMessenger()->addMessage('You are now logged in.'); // Pas réussi
                return $this->redirect()->toRoute('participant/participant-form', array('id' => $id));
            }

            return $this->redirect()->toRoute('participant/list');

        }


    }

    /**
     * Génère les numéros de dossards
     * @return \Zend\Http\Response
     */
    public function generateBibNumbersAction(){

        $participants = $this->entityManager->getRepository('Application\Entity\Participant')->findAll();
        $dossard = 1;
        foreach($participants as $participant){
            $participant->setNumDossard($dossard);
            $dossard++;
        }
        $this->entityManager->persist($participant);
        $this->entityManager->flush();
        return $this->redirect()->toRoute('participant/list');

    }

    public function deleteAction(){

        $participantId = $this->params()->fromRoute('id', -1);
        $participant = $this->entityManager->getRepository(Participant::class)
            ->findOneById($participantId);

        if (!$participant) {
            throw $this->createNotFoundException(
                'No participant found for id '.$participantId
            );
        }

        $this->entityManager->remove($participant);
        $this->entityManager->flush();
        return $this->redirect()->toRoute('participant/list');

    }


}
