//Menú

var menuActive = false;

document.querySelector('.toggleMenu').addEventListener('click', function(e) {
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
});

// Galería diagrmas 

var lis = document.querySelectorAll('#galeriaDiagramas ul li');
var modal = document.querySelector('.modal');

lis.forEach(function(li) {
	li.addEventListener('click', function(e) {
		modal.style.display = 'flex';
		modal.style.justifyContent = 'center'
		modal.style.alignItems = 'center';

		document.querySelector('.modal img').setAttribute('src', e.target.getAttribute('src'));
	});
});

document.querySelector('.cerrar').addEventListener('click', function(e) {
	modal.style.display = 'none';
});

window.addEventListener('keyup', function(e) {
	if (e.keyCode == 27) {
		modal.style.display = 'none';
	}
});

//Zoom
var zoom = false;
var imgModal = document.querySelector('.modal img');
imgModal.addEventListener('click', function(e) {
	if (zoom == false) {
		zoom = true
		imgModal.style.cursor = 'zoom-out';
		imgModal.style.transform = 'scale(1.5)';
	} else {
		zoom = false;
		imgModal.style.cursor = 'zoom-in';
		imgModal.style.transform = 'scale(1)';
	}
});
