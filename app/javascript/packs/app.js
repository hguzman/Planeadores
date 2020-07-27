// Variables
const message = document.querySelector('.notice');

// EventListeners
if (message.innerHTML !== '') {
	document.addEventListener('DOMContentLoaded', colocarMessage);
	console.log(message.textContent);
}

// Funciones
function colocarMessage() {
	message.style.display = 'block';
	message.style.animation = 'flashMessage 1s';

	setTimeout(function() {
		message.style.animation = 'quitarMessage 1s';

		setTimeout(function() {
			message.style.display = 'none';
		}, 800);
	}, 4000);
}