$(document).ready(()=>{
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

});