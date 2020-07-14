// Variables
const buscador = document.getElementById('filtro');
const estado = sessionStorage.getItem('estado');

// EventLsiteners
buscador.addEventListener('change', cargarPlaneaciones);
document.addEventListener('DOMContentLoaded', seleccionarFiltro);

// Funciones
function cargarPlaneaciones() {
	if(buscador.value === 'lista') {
		sessionStorage.setItem('estado','lista');
		location.href = 'http://localhost:3000/agentes/1/planeaciones?estado=Lista';
	} else if(buscador.value === 'enProceso') {
		sessionStorage.setItem('estado','enProceso');
		location.href = 'http://localhost:3000/agentes/1/planeaciones?estado=En%20Proceso';
	} else if(buscador.value === 'pendiente') {
		sessionStorage.setItem('estado','pendiente');
		location.href = 'http://localhost:3000/agentes/1/planeaciones?estado=Pendiente';
	} else {
		sessionStorage.setItem('estado','todas');
		location.href = 'http://localhost:3000/agentes/1/planeaciones';
	}
}

function seleccionarFiltro() {
	if(estado === 'pendiente') {
		buscador.children[1].selected = true;
	} else if(estado === 'enProceso') {
		buscador.children[2].selected = true;
	} else if(estado === 'lista') {
		buscador.children[3].selected = true;
	} else {
		buscador.children[0].selected = true;
	}
}

