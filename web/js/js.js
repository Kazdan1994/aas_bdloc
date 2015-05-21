$(document).ready(function()
{
    alert("yo");
});

$(document).on('click',".bt_ajoutPanier", function()
{
        var url_ajout = $(".bt_ajoutPanier").attr("data-value");
        alert("passage par ajax");
        $.ajax({
                method: "POST",
                url: url_ajout,
                data:{},
                success : function(r) 
                    {
                        console.log(r);
                    }
               });
    });