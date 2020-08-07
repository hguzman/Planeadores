const galeria = document.getElementById('galeriaDiagramas');
const modal = document.querySelector('.modal');
const modalImg = document.querySelector('.modal img');
const btnCerrar = document.querySelector('.cerrar');
let zoom = false;

galeria.addEventListener('click', abrirImg);

// Cerrar Modal
document.addEventListener('keyup', cerrarModal);
btnCerrar.addEventListener('click', cerrarModal);
modalImg.addEventListener('click', zoomImg);

function abrirImg(e) {
	if(e.target.classList.contains('galeriaItem')) {
		const att = e.target.getAttribute('src');
		modalImg.setAttribute('src', att);
		modal.style.display = 'flex';
	}
}

function cerrarModal(e) {
	modal.style.display = 'none';
	
	if(e.which == 27) {
		modal.style.display = 'none';
	}
}

function zoomImg() {
	console.log(zoom);
	if(zoom === false) {
		modalImg.style.transform = "scale(1.2)";
		zoom = true;
	} else if(zoom === true) {
		modalImg.style.transform = "scale(1)";
		zoom = false;	
	}
}