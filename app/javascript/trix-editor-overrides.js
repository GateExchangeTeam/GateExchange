window.addEventListener("trix-file-accept", function(event) {
    const acceptedTypes = ['image/jpeg', 'image/jpg', 'image/png'];
    const maxFileSize = 1024 * 1024; // 1MB

    if (!acceptedTypes.includes(event.file.type)) {
        event.preventDefault();
        alert("Only support attachment of jpeg or png files");
    }
    else if (event.file.size > maxFileSize) {
        event.preventDefault();
        alert("Only support attachment files upto size 1MB!");
    }
    else{
        return true;
    }
});