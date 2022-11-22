function animateCourses(){
    let urlParams = new URLSearchParams(window.location.search);
    if(urlParams.has("animate")){
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
    }
}
document.onreadystatechange = () => {
    if (document.readyState === "complete") {
       animateCourses();
    }
};
