const trimComments = ()=>{
    const maxLen = 140;

    document.querySelectorAll(".comment-text").forEach((comment)=>{
        const str = comment.textContent.trim();
        if(str.length > maxLen){
            const truncStr = str.substring(0, maxLen)
            const remStr = str.substring(maxLen)
            $(comment).empty().html(truncStr);
            $(comment).append(' <a href="javascript:void(0);" class="read-more">read more...</a>');
            $(comment).append('<span class="more-text d-none">' + remStr + '</span>');
        }
    });

    document.querySelectorAll(".read-more").forEach((item)=>{
        item.addEventListener("click",(e)=>{
            $(e.currentTarget).siblings(".more-text").contents().unwrap();
            $(e.currentTarget).remove();
        })
    });
}

const trixFormFixer = ()=>{
    $("#trix-toolbar-1").appendTo($("#toolbar-container"));
}

const replyForm = ()=>{
    const rF = $("#replyForm");
    const rT =  $("#replyToggle");
    rF.hide();
    document.getElementById("replyToggle").onclick = ()=>{
        if(rF.is(":visible")){
            rT.text("Reply");
            rF.slideUp(500);
        }
        else{
            rT.text("Hide");
            rF.slideDown(500);
        }
    }
}

function main(){
    trimComments();
    trixFormFixer();
    replyForm();
}

// Alternative to load event
document.onreadystatechange = () => {
    /*
        $(document).ready not working properly on firefox
     */
    if (document.readyState === "complete") {
        main();
    }
};
