var normalArr = arr.sort(function (a, b) {
    return a - b;
});

var smallestAmount = normalArr[0] + normalArr[1] + normalArr[2] + normalArr[3]

var flippedArr = normalArr.reverse()
var biggestAmount = flippedArr[0] + flippedArr[1] + flippedArr[2] + flippedArr[3]

console.log(smallestAmount + " " + biggestAmount)