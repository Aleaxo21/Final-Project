function loadProductData(){
    var request = new XMLHttpRequest();
    var productArray=[];
    
    request.open("GET","http://localhost:8080/view", true);
    
    request.onload =function(){
        productArray = JSON.parse(request.responseText);
    }
    request.send();
    //<div id ="dynamicProductDataList">
};

function insertdynamicProducts(productArray){
    let newContent = "<table><tr>";

    for (let i =0; i < productArray.length; i++){
        console.log(productArray[i]);

        newContent+=
            "<td>"
    }
}