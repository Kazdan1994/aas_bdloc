$(document).ready(function ()
{
    $("#afficher_resultats").on("click", function ()
    {
        //On stocke les valeurs du select id="afficher_resultats" dans des variables
        var resultats = $("#afficher_resultats").val();

        var currentLocation =  document.location.href;

        $.ajax(
            currentLocation,
            {
                type: "GET",
                url: currentLocation,
                data: "afficher_resultats=" +  resultats, // On fait passer nos variables, exactement comme en GET, au script php
                success:
                    function ajax_success ()
                    {
                        alert("Ajax marche !");
                    },
                error:
                    function ajax_error ()
                    {
                        alert("Ajax is done !");
                    },
                complete: function afficher_resultats ()
                {

                }
            })
    })
});