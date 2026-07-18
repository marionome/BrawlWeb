function change(id){
	const ch = document.getElementById(id)
	const img = ch.querySelector("img")
	const name = id
//	console.log(img)
//	console.log(("perfil/"+name+"2_perfil.png"))
	if (img.src.includes("perfil/"+name+"_perfil.png" )){
		img.src = ("perfil/"+name+"2_perfil.png" )
	}else
	{ img.src=("perfil/"+name+"_perfil.png")}
}