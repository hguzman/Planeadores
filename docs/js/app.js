//Curriculum
const btns = document.querySelectorAll('.btnInfo');
const modal = document.querySelector('.modal');
const modalCristian = document.getElementById('modalCristian');
const modalJhan = document.getElementById('modalJhan');
const modalZohair = document.getElementById('modalZohair');
const modalMelissa = document.getElementById('modalMelissa');
const btnCerrar = document.querySelector('.cerrar');

btnCerrar.addEventListener('click', cerrarModal);

btns.forEach(function(btn) {
	btn.addEventListener('click', abrirCurriculum);
});

document.addEventListener('keyup', cerrarModal);

function abrirCurriculum(e) {
	modal.style.display = 'flex';

	if(e.target.getAttribute('id') === 'btnCristian') {
		modalCristian.style.display = 'flex';
	} else if(e.target.getAttribute('id') === 'btnJhan') {
		modalJhan.style.display = 'flex';
	} else if(e.target.getAttribute('id') === 'btnZohair') {
		modalZohair.style.display = 'flex';
	} else if(e.target.getAttribute('id') === 'btnMelissa') {
		modalMelissa.style.display = 'flex';
	}
}

function cerrarModal(e) {
	modal.style.display = 'none';
		modalCristian.style.display = 'none';
		modalJhan.style.display = 'none';
		modalZohair.style.display = 'none';
		modalMelissa.style.display = 'none';

	if(e.which == 27) {
		modal.style.display = 'none';
		modalCristian.style.display = 'none';
		modalJhan.style.display = 'none';
		modalZohair.style.display = 'none';
		modalMelissa.style.display = 'none';
	}
}