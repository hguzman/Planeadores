import {Interfaz} from './interfaz.js';

const btnAbrirMenu = document.getElementById('btnAbrirMenu'),
      btnCerrarMenu = document.getElementById('btnCerrarMenu'),
      btnCerrarModal = document.getElementById('btnCerrarModal'),
      menu = document.getElementById('menu'),
      ul = document.querySelector('#menu > ul'),
      diagramas = document.getElementById('diagramas');

btnAbrirMenu.addEventListener('click', () => {
    Interfaz.mostrarMenu(menu, btnCerrarMenu, ul);
    btnAbrirMenu.style.color = '#fff';
});

btnCerrarMenu.addEventListener('click', () => {
    Interfaz.quitarMenu(menu, btnCerrarMenu, ul);
    btnAbrirMenu.style.color = '#000';
});

diagramas.addEventListener('click', e => {
    Interfaz.mostarModalDiagramas(e);
});

btnCerrarModal.addEventListener('click', () => {
   Interfaz.quitarModalDiagramas();
});