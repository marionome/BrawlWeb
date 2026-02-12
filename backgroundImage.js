

const bgvalue = document.getElementById("changebg");//o valor do background
const bg = document.getElementById("bg")//o background em si

bgvalue.addEventListener("change", function(){ //função para mudar o background
	console.log("mudou para ",bgvalue.value)
	if (bgvalue.value === "base") { //background base
		
		bg.style.backgroundImage = 'url("backgrounds/background_base.jpg")';
		
	}
	if (bgvalue.value === "tarabazar") { //background do bazar da tara
		
		bg.style.backgroundImage = 'url("backgrounds/background_tarabazar.jpg")';
		
	}
	if (bgvalue.value === "cyberweek") { //background da cyberweek
		
		bg.style.backgroundImage = 'url("backgrounds/background_cyberweek.jpg")';
		
	}
	if (bgvalue.value === "supercity") { //background da supercity
		
		bg.style.backgroundImage = 'url("backgrounds/background_supercity.jpg")';
		
	}
	
}
);

