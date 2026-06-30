function showhide(){
console.log("entrou no clique");

    const sh = document.getElementById("b_show");
    sh.classList.toggle("ativo");

 }

function showinfo(id){
    const br = document.getElementById(id);
    const resto = document.querySelectorAll(".brawler");
    const visivel = !br.classList.contains("hide");

    resto.forEach(function(b) {
        b.classList.add("hide");
    });

    if (!visivel){
        br.classList.remove("hide");
    }
}

