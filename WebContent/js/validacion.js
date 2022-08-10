function validacion() {
		var isbn = document.getElementById("isbn");
		console.log("El valor de isbn es: " + isbn.value);
		var miformulario = document.getElementById("miformulario");
		if (isbn.value == ""){
			window.alert("isbn --> datos no validos");
			return false;
		} else {
			miformulario.submit();
		}
	}