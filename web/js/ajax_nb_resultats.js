$(document).ready(function () {

    //Lorsqu'on clique sur le select
    $(".container").on("click", "#afficher_resultats", function () {
        //On récupère la valeur du select
        var resultats = $("#afficher_resultats").val();

        var url_select = $(this).attr(resultats); // on crée un url avec le chemin classique + l'id du livre cliqué

        $.ajax({
            url: url_select,
            method: 'GET', // Le type de la requête HTTP
            data: 'afficher_resultats=' + resultats, //On passe des paramètres avec GET pour les utiliser côté serveur dans l'array $_GET
            success: function (r) // code_json contient le json renvoyé
            {
                console.log(r); // message response retourné dans le controller;

                //On ajoute le html renvoyé par l'AJAX et on met le container bien aligné
                $('.container').html(r);
            }
        });
    })
});