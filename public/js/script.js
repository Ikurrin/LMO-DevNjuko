$(document).ready(function() {


    $('#duration').mask('00:00:00', {placeholder: '__:__:__'});

    $('#classement_hommes').hide();
    $('#classement_femmes').hide();

    $('#choix_classement').on('change', function () {

        $('#classement_general').hide();
        $('#classement_hommes').hide();
        $('#classement_femmes').hide();

        $('#classement_'+$(this).val()).show();


    })

});