// Variables
let menuActive = false;
let zoom = false;
const lis = document.querySelectorAll('#galeriaDiagramas ul li');
const modal = document.querySelector('.modal');
const imgModal = document.querySelector('.modal img');

// EventListeners
document.querySelector('.toggleMenu').addEventListener('click', toggleMenu);
document.querySelector('.cerrar').addEventListener('click', cerrarModal);
window.addEventListener('keyup', cerrarModal);
imgModal.addEventListener('click',zoomImg);

// Funciones
function toggleMenu() {
	location.href = '#header';

	if (menuActive == false) {
		document.querySelector('nav').style.marginLeft = '50px';
		// document.querySelector('header nav').style.display = 'none';
		menuActive = true;	
	} else {
		document.querySelector('nav').style.marginLeft = '-675px';
		// document.querySelector('header nav').style.display = 'flex';
		menuActive = false;
	}
}

lis.forEach(function(li) {
	li.addEventListener('click', function(e) {
		modal.style.display = 'flex';
		modal.style.justifyContent = 'center'
		modal.style.alignItems = 'center';

		document.querySelector('.modal img').setAttribute('src', e.target.getAttribute('src'));
	});
});

function cerrarModal(e) {
	modal.style.display = 'none';

	if (e.keyCode == 27) {
		modal.style.display = 'none';
	}
}

function zoomImg() {
	if (zoom == false) {
		zoom = true
		imgModal.style.cursor = 'zoom-out';
		imgModal.style.transform = 'scale(1.5)';
	} else {
		zoom = false;
		imgModal.style.cursor = 'zoom-in';
		imgModal.style.transform = 'scale(1)';
	}
}
