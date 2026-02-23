function showhide(){
console.log("entrou no clique");

    const sh = document.getElementById("b_show");
    sh.classList.toggle("ativo");

 }

function showinfo(id){
	console.log("clicou no icone");
	console.log(id);
	const br = document.getElementById(id);
	br.classList.toggle("hide")
	
}