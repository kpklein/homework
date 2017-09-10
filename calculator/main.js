var calc = 'Calculator';

console.log(calc);


// var myNewString = 'operation';
// var myAddedString = myNewString + ' Add, Subtract, Divide, Multiply';

// alert('Please enter your ' + myAddedString);





var add = 'Addition';
var subtract = 'Subtract';
var divide = 'Divide';
var mutliply = 'Multiply';
var Calculator = prompt ('please enter your operation' + 'add, subtract, divide, mutliply');
var firstNumber = prompt('Type in your First Number');
var secondNumber = prompt ('Type in your Second Number');


if (Calculator === "add"){
	firstNumber = parseFloat (firstNumber);
	secondNumber = parseFloat (secondNumber);
	alert( firstNumber + secondNumber);


} else if (Calculator === 'subtract') {

	firstNumber = parseFloat (firstNumber);
	secondNumber = parseFloat (secondNumber);
	alert( firstNumber -  secondNumber);

} else if (Calculator === 'divide') {

	firstNumber = parseFloat (firstNumber);
	secondNumber = parseFloat (secondNumber);
	alert( firstNumber /  secondNumber);


} else if (Calculator === 'mutliply') {

	firstNumber = parseFloat (firstNumber);
	secondNumber = parseFloat (secondNumber);
	alert( firstNumber *  secondNumber);

} else {
	alert('you did not insert a number or a valid operator')
}



















// var add1 = prompt('Type a number');
// var add2 = prompt('Type another number');
// var sum = parseInt (add1) + parseInt(add2);
// alert('The sum of ' + add1 +' + ' + add2 + ' = ' + sum);


// var sub1 = prompt('Type a number');
// var sub2 = prompt('Type another number');
// var sum = parseInt (num1) - parseInt(num2);
// alert('The sum of ' + num3 +' - ' + num2 + ' = ' + sum);


// var num1 = prompt('Type a number');
// var num2 = prompt('Type another number');
// var sum = parseInt (num1) / parseInt(num2);
// alert('The sum of ' + num1 +' / ' + num2 + ' = ' + sum);

// var num1 = prompt('Type a number');
// var num2 = prompt('Type another number');
// var sum = parseInt (num1) * parseInt(num2);
// alert('The sum of ' + num1 +' * ' + num2 + ' = ' + sum);





