$(document).on('click',".bt_ajoutPanier", function()
{
        var url_ajout = $(this).attr("data-value"); // on crée un url avec le chemin classique + l'id du livre cliqué
        $(this).addClass("disabled"); // change le bouton pour le désactiver
        
        $.ajax({
                method: "POST",
                url: url_ajout, //on va à ce fameux url
                data:{},
                success : function(r) 
                        {
                            console.log(r); // message response retourné dans commande controller
                                             
                            console.log("bt isabled"); // annonce la désactivation du bouton
                        }
               });
});

