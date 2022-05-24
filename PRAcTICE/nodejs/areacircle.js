const prompt = require('prompt-sync')();
function calcarea(radius){
	return 3.14 * radius * radius;
}
var rad = prompt('enter radius of the circle: ');
var result = calcarea(rad);
console.log("area of the circle having radius " + rad + " is " + result);

