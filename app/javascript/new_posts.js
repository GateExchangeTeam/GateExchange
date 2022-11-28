const trixFormFixer = ()=>{
    $("#trix-toolbar-1").appendTo($("#toolbar-container"));
}
document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        trixFormFixer();
    }
};
