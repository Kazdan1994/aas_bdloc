$(document).ready(function ()
{
    $('#bt_filtre2').hide();

    $("#afficher_resultats").on("click", function (e)
    {
        /*function xhr ()
         {
         var resultats = $("#afficher_resultats").val();

         var request = new XMLHttpRequest();
         request.onreadystatechange = function () {
         if (this.readyState == 4) {
         if (this.status === 200) {
         console.log(this.responseText);
         }
         else {
         alert(this.responseText);
         }
         }
         };

         request.open('GET', 'liste_bd?afficher_resultats=' + resultats, true);
         request.send();
         request = null;
         }
         */

        var resultats = $("#afficher_resultats").val();

        switch (resultats)
        {
            case 'cinq_resultats':

                //On ajoute à la requête une limite de 5 résultats
                $('tbody:nth-child(5)').hide();
                break;

            case 'dix_resultats':

                //On ajoute à la requête une limite de 10 résultats
                break;

            case 'vingt_resultats':

                //On ajoute à la requête une limite de 20 résultats
                break;
        }

        /*
        $.ajax({
            type: 'GET',
            url: 'liste_bd?afficher_resultats=' + resultats,
            success: function ajaxSuccess(data, textStatus, jqXHR)
            {
                switch (resultats)
                {
                    case 'cinq_resultats':

                        //On ajoute à la requête une limite de 5 résultats
                        //$('tbody:nth-child(n+5)').hide();
                        $('tbody:nth-child(n+5)').css('border-color', 'red');
                        break;

                    case 'dix_resultats':

                        //On ajoute à la requête une limite de 10 résultats
                        break;

                    case 'vingt_resultats':

                        //On ajoute à la requête une limite de 20 résultats
                        break;
                }
            },
            error: function ajaxError(jqxhr) {
                alert(jqxhr.responseText);
            }
        })
        */
    })
});