function buscar(){

    fetch("http://127.0.0.1:5000/brawler/Poco", {method:"GET"})
    .then(teste => teste.json())
    .then(teste => console.log(teste))
    
}