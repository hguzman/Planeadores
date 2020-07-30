// Variables
const message = document.querySelector('.notice');
const messageAlert = document.querySelector('.alert');
const messageError = document.querySelector('.error');
const menu = document.getElementById('btnSubmenu');

// EventListeners
if (message.innerHTML !== '') {
	document.addEventListener('DOMContentLoaded', colocarMessage(message));
}

if (messageAlert.innerHTML !== '') {
	colocarMessage(messageAlert, 'success');
}

try {
	if (messageError.innerHTML !== '') {
		colocarMessage(messageError, 'error');
		// messageError.innerHTML = `La cédula ingresada ya está registrada o los campos están mal`;
	}
} catch(error) {
	console.log(`Error: ${error}`);
}

menu.addEventListener('click', mostrarMenu);

// Funciones
function colocarMessage(elemento, tipo) {
	elemento.style.display = 'block';
	elemento.style.animation = 'flashMessage 1s';

	if(tipo === 'error') {
		elemento.style.background = '#FFC3C3';
		elemento.style.color = '#FF3333';
		elemento.style.border = '2px solid #FF3333';
	}

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