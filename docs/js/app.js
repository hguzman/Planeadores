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
