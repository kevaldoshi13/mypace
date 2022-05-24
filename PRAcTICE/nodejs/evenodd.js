const prompt = require('prompt-sync')();
function oddEven(num) {
	 return (num%2==0)? "even" : "odd";
}
var n = prompt('enter a number :');
console.log("the given no is " + oddEven(n));