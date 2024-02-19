function insertDynamicProducts(productArray) {
    let newContent = "<table><tr>";

    for (let i = 0; i < productArray.length; i++) {
        newContent += 
            "<td><h4>" + productArray[i].name + "</h4>" +
            "<img src='" + productArray[i].picture + "' width='150'><br>" +
            "</td>";

        if ((i + 1) % 3 === 0 && i < productArray.length - 1) {
            newContent += "</tr><tr>";
        }
    }

    // Append newContent to the HTML element with id dynamicProductDataList
    document.getElementById("dynamicProductDataList").innerHTML = newContent;
}

function loadProductData() {
    var request = new XMLHttpRequest();
    var productArray = [];
    
    alert("Welcome to RedStore!");
    request.open("GET", "http://localhost:8080/view", true);
    
    request.onload = function() {
        productArray = JSON.parse(request.responseText);
        alert(productArray);
        insertDynamicProducts(productArray); 
    };
    
    request.send();
}

function addProductData() {
    var product = new Object(); 
    product.name = document.getElementById('name').value;
    product.description = document.getElementById('description').value;
    product.price = document.getElementById('price').value;
    product.category_id = document.getElementById('category_id').value;
    product.picture = document.getElementById('picture').value;
    var request = new XMLHttpRequest();
    request.open("POST", "http://localhost:8080/add", true);
    request.setRequestHeader("Content-Type","application/json");

    request.onload = function(){
        alert(request.responseText);
        loadProductData();
    };
    request.send(JSON.stringify(product));
}

function updateProductData(){
    var params = new URLSearchParams(location.search);
    var id = params.get("id");
    var product = new Object(); 

    document.getElementById('name').value =product.name;
    document.getElementById('description').value = product.description;
    document.getElementById('price').value = product.price;
    document.getElementById('category_id').value =product.category_id;
    document.getElementById('picture').value = product.picture;
    document.getElementById('id').value;

    var request = new XMLHttpRequest(); 
    var urlLink = "http://localhost:8080/update/" +id;
    request.open("PUT",urlLink,true);
    request.setRequestHeader("Content-Type","application/json");
    request.onload = function(){
        location.href = "productinfo.html"
        alert(request.responseText)
    };
    request.send(JSON.stringify(product));
}

function deleteProductData(item){
    var id = item.getAttribute("restId");
    console.log('delete id'+id)
    var request = new XMLHttpRequest();

    request.open("delete","http://localhost:8080/update/" + id, true);
    request.onload = function(){
        location.href = "product.html"
    }
    request.send();
}
