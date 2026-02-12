

function showhide(){
console.log("entrou no clique");
	const sh = document.getElementById("b_show");
	if ( sh.style.display === "block"){
		sh.style.display = "none";
		console.log("none")
	} else {
		sh.style.display = "block";
		console.log("block")
	}

 }
