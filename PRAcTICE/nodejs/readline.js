var areacircum=require("./circleexp");
var r1 = require('readline').createInterface({
	input: process.stdin,
	output: process.stdout
	});
	r1.question("enter the number : ",r => {
		var ans= areacircum(r);
		console.log('your answer is :  '+ans);
		r1.close();
});