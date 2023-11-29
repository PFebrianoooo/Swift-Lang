import Foundation

// for in loops
//for i in 0..<100 {
//    print(i)
//}

// Penerapan Pada arrays.
// bisa menaruh pengkondisian didalam loop dan bisa digunakan dengan array yang kosongan
var myFruits: [String] = ["Apples", "Watermelon", "Orange", "Mango", "Mangosteen"]

var myNewArrays: [String] = []

//for items in myFruits {
//    print(items)
//
//    if items == "Orange" {
//        myNewArrays.append(items)
//    }
//}

//print(myNewArrays)


// Arrays bekerja pada struct dan arrays
struct UserModel {
    let name: String
    let isPremium: Bool
}

let userModelArrays: [UserModel] = [
    UserModel(name: "Bandi", isPremium: false),
    UserModel(name: "Ujang", isPremium: true),
    UserModel(name: "Epinn", isPremium: false),
    UserModel(name: "Putra", isPremium: true),
    UserModel(name: "Najla", isPremium: false),
    UserModel(name: "Fajri", isPremium: true),
    UserModel(name: "Jamal", isPremium: false)
]

var nameArrays: [UserModel] = []

for (index,user) in userModelArrays.enumerated() {
    if index == 2 {
//        break
        continue
    }
    
    print("\(index) || \(user)")

}

print(nameArrays)

// mengambil value arrays dan indexes with .enumerated()
// dan bisa menggunakan pengoperasian ke arrays lain
print()

var arraysPutraBoughtSomeFruits: [String] = []
var arraysPutraWasntBoughtSomeFruits: [String] = []

for (indexing, fruits) in myFruits.enumerated(){
    if indexing > 2 {
        arraysPutraBoughtSomeFruits.append(fruits)
    }else {
        arraysPutraWasntBoughtSomeFruits.append(fruits)
    }
}

print(arraysPutraBoughtSomeFruits)
print(arraysPutraWasntBoughtSomeFruits)










// safely access append, and remove arrays, willnot crash ur apps
// starts
if myFruits.indices.contains(0) {
    let myitems = myFruits[0]
}

if myFruits.indices.contains(10) {
    myFruits.append("Jamal Hammadi")
}

if myFruits.indices.contains(10) {
    myFruits.remove(at: 10)
}
// ends




// REMEMBER THIS !!
// Pengkondisian if statement, guard statements bisa digunakan didalam looping.
// control flow looping
// 1. break. apabila memenuhi kondisi maka di stop untuk indexing selanjutnya (>)
// 2. continue, apabila memenuhi kondisi maka hanya skip si kondisi tersebut (==)
