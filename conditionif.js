

// =================== list of function ===================

function countryChecker (nameOfPerson) {

    var isJapanese;

    if(nameOfPerson == "Kumiko") {
        isJapanese = "this person is japanese"
    } else {
        isJapanese = "this person is not japanese"
    }

    return isJapanese
}



// =================== runner ===================

var name = "Kumiko"

console.log(countryChecker(name))