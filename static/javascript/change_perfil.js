function change(id){
	const ch = document.getElementById(id)
	const img = ch.querySelector("img")
	const name = id
//	console.log(img)
//	console.log(("perfil/"+name+"2_perfil.png"))
	if (img.src.includes("static/perfil/"+name+"_perfil.png" )){
		img.src = ("static/perfil/"+name+"2_perfil.png" )
	}else
	{ img.src=("static/perfil/"+name+"_perfil.png")}
}