$(document).ready(function () //On utilise jQuery
{

    /* POUR LE FILTRE DE TRI PAR DATE DE PUBLICATION, ORDRE ALPHABETIQUE ET DATE D'AJOUT AU CATALOGUE */
    $("#select_trier").on("click", (function () //On déclenche un événement lorsqu'on clique #select_trier
    {

        var $this = $(this); // L'objet jQuery du select

        // Je récupère les valeurs de mes select
        var option_ordreAlpha = $("#select_option_ordreAlpha").val();
        var option_datePublished = $("#select_option_datePublished").val();

        // Envoi de la requête HTTP en mode asynchrone
        $.ajax(
            {
                type: "get", // La méthode indiquée dans le formulaire (ici get)
                success:
                    function OptionsSelect()
                    { // Je récupère la réponse du fichier PHP
                        // J'affiche cette réponse
                    }
            })
    }));
});

$(document).on('click', '#afficher_resultats', function ()
{

    /* POUR LE FILTRE DE TRI PAR NOMBRE DE RESULTATS (5, 10, 20) */
    var selectResultat = $(this); //L'objet jQuery du select

    var url_ajout = $(this).attr("value"); // on crée un url avec le chemin classique + l'id du livre cliqué

            // Envoi de la requête HTTP en mode asynchrone
            $.ajax(
                {
                    type: 'GET', // La méthode indiquée dans le formulaire (ici get)
                    url: url_ajout, //on va à ce fameux url
                    data: {},
                    success:
                        function OptionsSelectResultats () {

                            /* ICI ON EST CENSE RECUPERER LE PHP */

                            console.log('Hello world !');
                        }
                })
        });