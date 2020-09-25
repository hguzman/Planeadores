export class Interfaz {
	static mostrarMenu(menu, btn, ul) {
		menu.style.left = '0';
		ul.style.left = '0';
		btn.style.right = '20px';
	}

	static quitarMenu(menu, btn, ul) {
		menu.style.left = '-2450px';
		ul.style.left = '-2450px';
		btn.style.right =  '-1100px';
	}

	static mostarModalDiagramas(e) {
		if(e.target.classList.contains('img-fluid')) {
			document.getElementById('modal').style.display = 'flex';
			document.querySelector('#modal img').setAttribute('src', e.target.getAttribute('src'));
		}
	}

	static quitarModalDiagramas() {
		document.getElementById('modal').style.display = 'none';
	}
}