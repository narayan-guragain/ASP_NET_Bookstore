
/*
Student Name: Chandra K.Rai, Narayan Guragain, Bishnu Khanal, 
              Balkrishna Dhakal, Frederico de Moraes Galdino
Submitted to: S.M.Reza Dibaj
Date: Oct 21, 2017 -- >
File Name: cart.js
*/


/**
 * for cart item counter
 */

var classname = document.getElementsByClassName("btn");

var myFunction = function () {
	var item = parseFloat(document.getElementById("cartbadge").innerHTML);	
	var iter = 0;
	iter++;	
	var itemincart = item + iter;
	
	document.getElementById("cartbadge").innerHTML = itemincart;
	var check = parseFloat(document.getElementById("cartbadge").innerHTML);	
};

for (var i = 0; i < classname.length; i++) {
	classname[i].addEventListener('click', myFunction, false);
}


/**
 * for title after category selection
 */

//var categories = document.getElementsByClassName("category");

//var cFunction = function () {
//	//for (var i = 0; i < categories.length; i++) {


//		document.getElementById("categoryheading").innerHTML = .innerHTML;
//	//}

	
//	//var v = document.getElementById("categoryheading").innerHTML;
//	//console.log(v);
//};

//for (var i = 0; i < categories.length; i++) {
//	categories[i].addEventListener('click', cFunction, false);
//}