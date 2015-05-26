$(document).ready(function () //On utilise jQuery
{

    /* POUR LE FILTRE DE TRI PAR DATE DE PUBLICATION, ORDRE ALPHABETIQUE ET DATE D'AJOUT AU CATALOGUE */
    $("#select_trier").on("click", (function () //On déclenche un événement lorsqu'on clique #select_trier
    {

        //On stocke les valeurs du select id="select_trier" dans des variables
        var select_trier = $("#select_trier").val();

        // Envoi de la requête HTTP en mode asynchrone
        $.ajax(
            {
                type: "get", // La méthode indiquée dans le formulaire (ici get)
                success: function OptionsTriSelect() { // Je récupère la réponse du fichier PHP
                    // J'affiche cette réponse
                    alert("Ajax pour le tri, ça marche !");
                },
                error: function OptionsTriSelectError ()
                {
                    alert("Ajax pour le tri, ça marche pas !");
                }
            })
    }));
});