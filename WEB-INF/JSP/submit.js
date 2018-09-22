var interest_list = ["development", "office", "publicity"];

function binarize() {
    var length = interest_list.length;
    var result = 0;
    for (i = 0; i < length; i ++) {
        if (document.getElementById(interest_list[i]).checked) {
            result += Math.pow(2, i);
        }
    }
    document.getElementById("interests").value = result;
}

function trySubmit() {
    console.log("fuck");
    let form = document.forms["reg"];
    binarize();
    console.log(document.getElementById("interests").value);
    if (form['interests'].value == "0") {
        alert("please select at least one interest");
        return false;
    } else {
        form.submit();
    }
}