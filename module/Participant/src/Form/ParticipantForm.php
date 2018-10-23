<?php

namespace Participant\Form;

use Zend\Db\Sql\Select;
use Zend\Form\Form;

class ParticipantForm extends Form
{
    private $events = [
        '1' => 'Course de 12km',
        '2' => 'Semi Marathon'
    ];


    public function __construct($name = null)
    {

        parent::__construct('user');

        $this->setAttribute('class', 'form-horizontal');

        $this->add([
            'name' => 'id',
            'type' => 'Hidden',
        ]);

        $this->add([
            'name'    => 'firstname',
            'type'    => 'Text',
            'options' => [
                'label' => 'Prénom',
            ],
        ]);

        $this->add([
            'name'    => 'lastname',
            'type'    => 'Text',
            'options' => [
                'label' => 'Nom',
            ],
        ]);

        $this->add([
            'name'    => 'sex',
            'type'    => 'Radio',
            'options'    => [
                'label'            => 'Sexe',
                'label_attributes' => ['class' => 'checkbox-inline'],
                'value_options'    => [
                    [
                        'value'      => 'male',
                        'label'      => 'Homme',
                    ],
                    [
                        'value'      => 'female',
                        'label'      => 'Femme',
                    ]
                ]
            ],
        ]);

        // Mise en place de la picklist des évènements de la BDD
        $this->add([
            'name'      => 'event',
            'type'      => 'Select',
            'attributes' => [
                'id'    => 'event'
            ],
            'options'   => [
                'label'             => 'Evenement',
                'label_attributes'  => [],
                'value_options' => $this->events
            ]
        ]);

        // Numéro dossard
        $this->add([
            'name'    => 'num_dossard',
            'type'    => 'Text',
            'attributes' => [
                'id'    => 'num_dossard'
            ],
            'options' => [
                'label' => 'Dossard n°'
            ],
        ]);

        // Durée
        $this->add([
            'name'    => 'duration',
            'type'    => 'Text',
            'options' => [
                'label' => 'Temps'
            ],
            'attributes' => [
                'id' => 'duration'
            ]
        ]);



        $this->add([
            'name'       => 'submit',
            'type'       => 'submit',
            'attributes' => [
                'class' => 'btn btn-primary',
                'value' => 'Sauvegarder'
            ],
        ]);
    }

}