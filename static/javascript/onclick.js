function showhide(){
console.log("entrou no clique");

    const sh = document.getElementById("b_show");
    sh.classList.toggle("ativo");

 }

function showinfo(id){
    console.log(id)
    const painel = document.getElementById("infobrawler");
    visivel = false
    brawlerAtual = null
    if(!visivel){
        painel.classList.remove("hide");
        console.log(id)
        buscar(id);

        visivel = true;
        brawlerAtual = id;
        return;
    }

    if(brawlerAtual == id){
        painel.classList.add("hide");

        visivel = false;
        brawlerAtual = null;
    }
    else{
        buscar(id);
        brawlerAtual = id;
    }
}

function buscar(nome){
    console.log(nome);
    console.log(`http://127.0.0.1:5000/brawler/${nome}`);
    fetch(`http://127.0.0.1:5000/brawler/${nome}`, {method:"GET"})
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