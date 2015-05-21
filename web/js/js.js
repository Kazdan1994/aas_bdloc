$(document).on('click',"nom btn", function()
{
        var url_ajout = $("bt_ajoutPanier").attr("data-value");
        $.ajax({
                method: "POST",
                url: url_ajout
                data: {},
                success : function(r) 
                    {
                        console.log(r);
                    }
               });
    });