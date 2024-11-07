// Write your code here
// console.log(arr)

var posNumber = 0;
var negNumber = 0;
var zero = 0;

for (let i = 0; i < arr.length; i++) {

    if (arr[i] == 0) {
        zero = zero + 1
    } else if (arr[i] > 0) {
        posNumber = posNumber + 1
    } else {
        negNumber = negNumber + 1
    }
}

// console.log("pos: "+ posNumber)
// console.log("neg: "+ negNumber)
// console.log("zero: "+ zero)

var arrLength = arr.length
var posDecimal = posNumber / arrLength
var negDecimal = negNumber / arrLength
var zeroDecimal = zero / arrLength

console.log(posDecimal.toFixed(6))
console.log(negDecimal.toFixed(6))
console.log(zeroDecimal.toFixed(6))