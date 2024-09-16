var productOne = {
    name: "umbrella",
    qty: 2,
    pricePerItem: 300,
    currency: "yen"
}

var productTwo = {
    name: "cola",
    qty: 1,
    pricePerItem: 100,
    currency: "yen"
}

var productThree = {
    name: "purin",
    qty: 4,
    pricePerItem: 150,
    currency: "yen"
}

var totalPriceOne = productOne.pricePerItem * productOne.qty
var totalPriceTwo = productTwo.pricePerItem * productTwo.qty
var totalPriceThree = productThree.pricePerItem * productThree.qty

var totalPrice = totalPriceOne + totalPriceTwo + totalPriceThree


console.log("The total price of your shopping is: " + totalPrice + " " + productOne.currency)