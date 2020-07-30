// Variables
let menuActive = false;
let zoom = false;
const lis = document.querySelectorAll('#galeriaDiagramas ul li');
const modal = document.querySelector('.modal');
const imgModal = document.querySelector('.modal img');
const integrantes = document.getElementById('integrantes');

let curriculumCristian;
let curriculumJhan;
let curriculumZohair;
let curriculumMelissa;

// EventListeners
document.querySelector('.toggleMenu').addEventListener('click', toggleMenu);

try {
	document.querySelector('.cerrar').addEventListener('click', cerrarModal);
} catch(error) {
	console.log(`Error: ${error}`);
}

window.addEventListener('keyup', cerrarModal);

try {
	imgModal.addEventListener('click',zoomImg);
} catch(error) {
	console.log(`Error: ${error}`);
}

integrantes.addEventListener('click', abrirCurriculum);

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
	curriculumCristian.style.display = 'none';
	curriculumJhan.style.display = 'none';
	curriculumZohair.style.display = 'none';
	curriculumMelissa.style.display = 'none';

	if (e.keyCode == 27) {
		modal.style.display = 'none';
		curriculumCristian.style.display = 'none';
		curriculumJhan.style.display = 'none';
		curriculumZohair.style.display = 'none';
		curriculumMelissa.style.display = 'none';
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

function abrirCurriculum(e) {
	const modal = document.querySelector('.modal');
	curriculumCristian = document.getElementById('modalCristian');
	curriculumJhan = document.getElementById('modalJhan');
	curriculumZohair = document.getElementById('modalZohair');
	curriculumMelissa = document.getElementById('modalMelissa');

	if(e.target.getAttribute('id') == 'btnCristian') {
		modal.style.display = 'flex';
		curriculumCristian.style.display = 'flex';

	} else if(e.target.getAttribute('id') == 'btnJhan') {
		modal.style.display = 'flex';
		curriculumJhan.style.display = 'flex';

	} else if(e.target.getAttribute('id') == 'btnZohair') {
		modal.style.display = 'flex';
		curriculumZohair.style.display = 'flex';

	} else if (e.target.getAttribute('id') == 'btnMelissa') {
		modal.style.display = 'flex';
		curriculumMelissa.style.display = 'flex';
	}
}
