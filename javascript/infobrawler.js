//Mostrar informação dos brawlers
const brawler = document.querySelectorAll(".brawler");

brawler.forEach(brawler => {
	const info = brawler.querySelector(".info");
	console.log("entrou na info")
	brawler.addEventListener("mouseenter", () =>{ //addEventListener:verifica se um evento aconteceu, nesse caso, o "mouseenter",q seria quando o mouse tiver em cima da imagem do brawler
		//console.log("mouse dentro")
		info.style.opacity = "1";
	});
	brawler.addEventListener("mouseleave", () =>{ // aqui o evento é se o mouse estiver fora da foto do brawler
		//console.log("mouse fora")
		info.style.opacity = "0";
	});
});
