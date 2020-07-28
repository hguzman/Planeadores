// Variables
const message = document.querySelector('.notice');
const messageAlert = document.querySelector('.alert');
const messageError = document.querySelector('.error');
const menu = document.getElementById('btnSubmenu');

// EventListeners
if (message.innerHTML !== '') {
	document.addEventListener('DOMContentLoaded', colocarMessage(message));
	console.log(message.textContent);
}

if (messageAlert.innerHTML !== '') {
	colocarMessage(messageAlert);
}

try {
	if (messageError.innerHTML !== '') {
		colocarMessage(messageError);
		messageError.innerHTML = `La cédula ingresada ya está registrada o hay campos vacios`;
	}
} catch(error) {
	console.log(`Error: ${error}`);
}

menu.addEventListener('click', mostrarMenu);

// Funciones
function colocarMessage(elemento) {
	elemento.style.display = 'block';
	elemento.style.animation = 'flashMessage 1s';

	setTimeout(function() {
		elemento.style.animation = 'quitarMessage 1s';

		setTimeout(function() {
			elemento.style.display = 'none';
		}, 800);
	}, 4000);
}

function mostrarMenu() {
	const subMenu = document.querySelector('.submenu');
	subMenu.classList.toggle('activo');

	if (subMenu.classList.contains('activo')) {
		subMenu.style.display = 'block';
	} else {
		subMenu.style.display = 'none';
	}
}