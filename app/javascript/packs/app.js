// Variables
const message = document.querySelector('.notice');
const messageAlert = document.querySelector('.alert');
const messageError = document.querySelector('.error');

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

// DataTables

$(document).ready(function() {
    $('#agentes').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );
		$('#planeaciones').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );
		$('#transacciones').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );
		$('#usuarios').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );
} );

$(document).ready(function() {
	$('#agentes').dataTable();
	$('#planeaciones').dataTable();
	$('#transacciones').dataTable();
	$('#usuarios').dataTable();
});
