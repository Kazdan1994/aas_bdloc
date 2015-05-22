$(document).on('click',".bt_ajoutPanier", function() //bouton d'ajout au panier
{
        var url_ajout = $(this).attr("data-value"); // on crée un url avec le chemin classique + l'id du livre cliqué
        var btn= $(this);

        $(this).addClass("disabled"); // change le bouton pour le désactiver
        
        $.ajax({
                method: "POST",
                url: url_ajout, //on va à ce fameux url
                data:{},
                success : function(r) 
                        {
                            console.log(r); // message response retourné dans commande controller
                            console.log("bt disabled"); // annonce la désactivation du bouton
                            btn.siblings(".stock_bd").html("Stock :"+r);
                        }
               });
});


$(document).on('click',".bt_suppr", function() // bouton suppression du panier
{
        var btn= $(this);        
        var url_suppr = $(this).attr("data-value"); // on crée un url avec le chemin classique + l'id du livre cliqué
                
        $.ajax({
                method: "POST",
                url: url_suppr, //on va à ce fameux url
                data:{},
                success : function(r) 
                        {
                            console.log(r); // message response retourné dans commande controller     
                            btn.parents(".ligne_panier").hide("slow"); 
                        }
               });
});

//modal pour afficher details auteur
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
});

$('body').on('hidden.bs.modal', '.modal', function () {
  $(this).removeData('bs.modal');
});