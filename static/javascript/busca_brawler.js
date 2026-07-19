function buscar(nome){

    fetch("http://127.0.0.1:5000/brawler/${nome}", {method:"GET"})
    .then(brawldata => brawldata.json())
    .then(brawldata => {
        console.log("entrou")
        document.getElementById("brawl_nome").innerHTML = brawldata.nome_brawler;
        document.getElementById("classe").innerHTML = brawldata.classe;
        document.getElementById("vida").innerHTML = brawldata.vida;
        document.getElementById("dano").innerHTML = brawldata.dano;
        document.getElementById("descricao").innerHTML = brawldata.descricao;
        }
    )
    
}