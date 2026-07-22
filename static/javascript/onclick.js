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
        document.getElementById("trio").innerHTML = brawldata.nome_trio;
        document.getElementById("raridade").innerHTML = brawldata.nome_raridade;
        rari_class(brawldata.nome_raridade);
        document.getElementById("perfil").src = "static/"+brawldata.perfil_dir;
        }
    )
    
}


old_rari = null
function rari_class(raridade){
    raridade = raridade.toLowerCase()

    if (old_rari != null){
        infobrawler.classList.remove(old_rari)
        infobrawler.classList.add(raridade)
        old_rari = raridade
    }
    else{
        old_rari = raridade
        infobrawler.classList.add(raridade)
    }
}