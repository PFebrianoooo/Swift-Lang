import Foundation

// constants
let balikanSamaMantan = false
// cannot assign
//balikanSamaMantan = true


// Variable
var tidakBisaCoding = true
print(tidakBisaCoding)

tidakBisaCoding = false
print(tidakBisaCoding)

var nilaiUlanganCoding = 90
print("nilai ulangan coding adalah \(nilaiUlanganCoding)")
nilaiUlanganCoding = 100
print("nilai ulangan coding adalah \(nilaiUlanganCoding)")
nilaiUlanganCoding = 80
print("nilai ulangan coding adalah \(nilaiUlanganCoding)")
nilaiUlanganCoding = 95
print("nilai ulangan coding adalah \(nilaiUlanganCoding)")


// if statements
var isPremium = false

// false true
if isPremium == false {
    print("you aren't premium")
}
// short false code
if !isPremium {
    print("you aren't premium 2")
}

// kondisi true
if isPremium == true {
    print("you premium")
}
// short true
if isPremium {
    print("you premium 2")
}else {
    print("u arent premiumm")
}


// ternary operator
balikanSamaMantan ? print("Mengulang buku kedua kalinya") : print("Banyak Pelajarannya")

// if else statement
let a = 2
let b = 2

if a > b {
    print("cuakzzzz benarrr")
}else if a == 2{
    print("benar lagi")
}else {
    print("cuakszzzz salah")
}

