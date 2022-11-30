const des_input = document.querySelector("#description-title");
const title_input = document.getElementById('form4Example3');

class ClassWatcher {

    constructor(targetNode, classToWatch, classAddedCallback, classRemovedCallback) {
        this.targetNode = targetNode
        this.classToWatch = classToWatch
        this.classAddedCallback = classAddedCallback
        this.classRemovedCallback = classRemovedCallback
        this.observer = null
        this.lastClassState = targetNode.classList.contains(this.classToWatch)

        this.init()
    }

    init() {
        this.observer = new MutationObserver(this.mutationCallback)
        this.observe()
    }

    observe() {
        this.observer.observe(this.targetNode, { attributes: true })
    }

    disconnect() {
        this.observer.disconnect()
    }

    mutationCallback = mutationsList => {
        for(let mutation of mutationsList) {
            if (mutation.type === 'attributes' && mutation.attributeName === 'class') {
                let currentClassState = mutation.target.classList.contains(this.classToWatch)
                if(this.lastClassState !== currentClassState) {
                    this.lastClassState = currentClassState
                    if(currentClassState) {
                        this.classAddedCallback()
                    }
                    else {
                        this.classRemovedCallback()
                    }
                }
            }
        }
    }
}

const trixFormFixer = ()=>{
    $("#trix-toolbar-1").appendTo($("#toolbar-container"));
}
document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        trixFormFixer();
    }
};


$('#form4Example3').on('input', function (evt) {
    var value = evt.target.value
    var result = /^(\w| ){5,}$/.test(value)

    if (result != true){
        if ($('#error-message-title').length == 0){
            $('#form4Example3').after('<span id="error-message-title">Titles must be greater than 5 characters and include no symbols</span>');
        }
    }else{
        if ($('#error-message-title').length > 0){
            $('#error-message-title').remove()
        }
        
    }
    
  });

  $('#description-title').on('input', function (evt) {
    var value = evt.target.value
    value = value.replace('<div>', '');
    value = value.replace('</div>', '');
    var result = /^.{11,}$/.test(value)


    if (result != true){
        if ($('#error-message-descrip').length == 0){
            $('#description-title').after('<span id="error-message-descrip">Question descriptions must be longer than 10 characters</span>');
        }
    }else{
        if ($('#error-message-descrip').length > 0){
            $('#error-message-descrip').remove()
        }
        
    }
    
  });

  $("#submit-new").click(function() {
    var description = des_input.value
    var description = description.replace('<div>', '');
    var description = description.replace('</div>', '');
    var title = title_input.value

    if (description == "" || title == ""){
        alert("Please fill in all fields")
        return false
    }

    if ($('#error-message-title').length > 0 && $('#error-message-descrip').length == 0){
        title_input.classList.add("apply-shake");
        return false
    }else if ($('#error-message-descrip').length > 0 && $('#error-message-title').length == 0){
        console.log("here2")
        des_input.classList.add("apply-shake");
        return false
    }else if ($('#error-message-descrip').length > 0 && $('#error-message-title').length > 0){
        des_input.classList.add("apply-shake");
        title_input.classList.add("apply-shake");
        return false
    }else{
        return true
    }
  });

des_input.addEventListener("animationend", (e) => {
    des_input.classList.remove("apply-shake");
});

function workOnClassAdd() {
    title_input.classList.remove("apply-shake");
}

function workOnClassRemoval() {
    alert("I'm triggered when the class is removed")
}

// watch for a specific class change
let classWatcher = new ClassWatcher(title_input, 'apply-shake', workOnClassAdd, workOnClassRemoval)



