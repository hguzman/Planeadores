//Menú

var menuActive = false;

document.querySelector('.toggleMenu').addEventListener('click', function(e) {

	if (menuActive == false) {
		document.querySelector('nav').style.marginLeft = '50px';
		menuActive = true;	
	} else {
		document.querySelector('nav').style.marginLeft = '-600px';
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


