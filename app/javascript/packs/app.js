// Variables
const message = document.querySelector('.notice');
const messageAlert = document.querySelector('.alert');
const messageError = document.querySelector('.error');

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