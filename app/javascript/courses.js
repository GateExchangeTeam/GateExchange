function scrollTo(target,duration){
    $('html, body').animate({
        scrollTop: target.offset().top
    }, duration);
}
function animateCourses(){
    let urlParams = new URLSearchParams(window.location.search);
    if(urlParams.has("animate")){
        let courses = $(".palette__wrapper");

        courses.each(function (){
            $(this).hide();
        });

        courses.each(function (index){
            let course = $(this);
            setTimeout(function (){
                course.fadeIn(400);
                scrollTo(course,100);
            },100+(index*450))
        });
    }
}
document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        animateCourses();
    }
};
