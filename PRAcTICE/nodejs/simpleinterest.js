const prompt = require('prompt-sync')();
function calcSimpleInterest(p,n,r) {
	var SI =(p*n*r)/100;
	return SI;
}
const p_amt =prompt('enter principle amount : ');
const roi = prompt("enter the rate of interest: ");
const time = prompt("enter duration/time: ")
var answer = calcSimpleInterest(p_amt,roi,time);
console.log("simpe interest = " + answer);