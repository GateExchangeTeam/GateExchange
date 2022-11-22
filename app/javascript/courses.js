let palette = $(".palette");

palette.each(function (){
    $(this).hide();
});

palette.each(function (index){
    let pal = $(this);
    setTimeout(function (){
        pal.fadeIn(400);
    },100+(index*350))
});