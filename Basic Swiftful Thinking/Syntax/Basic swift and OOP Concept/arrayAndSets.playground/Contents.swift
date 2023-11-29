import Foundation

// reveiw tuple dan custom data types.
let myTitle = "Hello world 1"
let myTitle2 = "Hello world 2"

// tuple
func doSomething(value: (tittle: String, tittle2: String)){
    
}

doSomething(value: (myTitle, myTitle2))

// custom data types
struct TittleModel {
    let tittle1: String
    let tittle2: String
}

func doSomethingElse(value: TittleModel){
    
}

doSomethingElse(value: TittleModel(tittle1: myTitle, tittle2: myTitle2))
/*
 atas dasar diataslah kita membutuhkan arrayy untuk mengcover collection data , mungkin kalo 2 data atau tiga data bisa menggunakan ini, tetapi kalo ada ratusan bahkan ribuan, tuple dan custom datatypes tidak bisa mencover adanya data sebanyak itu.
 */



// =================================================
// Arrays

let apples = "Apple"
let banana = "Banana"
let another = false

// inisisalisasi array
let fruits1: [String] = ["Apples", "Banana"]
let fruits2: [String] = [apples, banana]
let fruits4 = [banana, apples]
let fruits3: Array<String> = [apples, banana] // generic arrays



// operasi arrays dengan parameter fungsi.
// 1. passing nilai array keseluruhan
func doSomethingWithArrays(value : Array<String>) {
    
}

// 2. passing nilai array berupa value
func doSomethingElseWithArrays(value: [String]) {
    
}

//doSomethingWithArrays(value: fruits3)
//doSomethingElseWithArrays(value: ["Banana", "watermelon", "Belimbing"])

// working with arrays.
// array berada pada stack memory. yang artinya pendefinisian akan menggunakan variable. we copy and paste it into new version.
// arrays using indexes. [0,1,2,3,4]
// count using number standard [1,2,3,4,5]

var fruitsArrays: [String] = ["apples", "Watermelon"]

// READ ARRAYS
let hitung = fruitsArrays.count
let seeFirstItems = fruitsArrays.first
let seeLastItems = fruitsArrays.last

// arrays using indexes. PROOVEN BY CODE
// akses array melalui index tidak safe
let seearraysWithIndex = fruitsArrays[1]
let firstIndex = fruitsArrays.indices.first
let firstLast = fruitsArrays.indices.last

//safe check value arrays by indexes
if fruitsArrays.indices.contains(4) {
    let item = fruitsArrays[4]
    print(item)
}

// unwrap optionals.
// for use case sort.
if let firstItems = fruitsArrays.first {
    // firtItems
}



// OPERATING ARRAYS (OPERASI ARRAYS)
// 1. Append
fruitsArrays.append("Mango") // insert single in last indexes
fruitsArrays.append(contentsOf: ["bernuk", "Gowok"]) // insert collection of element in last indexes, and range data for int(0...30)

// 2. Insert
fruitsArrays.insert("Jancuk", at: 2) // insert single element on  index we wanted
fruitsArrays.insert(contentsOf: ["boring jancuk", "seher jancuk"], at: 2) // insert collestion element on index we wanted.

// 3. Remove
fruitsArrays.remove(at: 2) // remove in indexes we wanted
fruitsArrays.removeAll() // remove all arrays

// safely remove arrays with indexes check
if fruitsArrays.indices.contains(100) {
    fruitsArrays.remove(at: 100)
}




// EVALUASI DIRI
// array with struct
struct ProductModel {
    let tittle: String
    let price: Int
    
    func changePrice(updated: Int) -> ProductModel {
        return ProductModel(tittle: self.tittle, price: updated)
    }
    
}

class ModelKecantikan {
    
    var productArray: [ProductModel] = [
        ProductModel(tittle: "Maybelinne", price: 10),
        ProductModel(tittle: "Wardah", price: 20),
        ProductModel(tittle: "Skintific", price: 70)
    ]
    
}

let produtions = ModelKecantikan()
//print(produtions.productArray[0])
//produtions.productArray[0] = produtions.productArray[0].changePrice(updated: 100)
//print(produtions.productArray[0])


let productNew = produtions.productArray[1]
print(productNew)
produtions.productArray[1] = produtions.productArray[1].changePrice(updated: 1000000)
print(produtions.productArray[1])


//var changeValues = productArray
//var changingVariables = changeValues[0]
//print(changingVariables)
//changeValues[0] = changeValues[0].changePrice(updated: 100)
//print(changeValues[0])

// harus sealalu diingat bahwa class edit inside
// struct make a copy of variable.



// sets vs arrays
// arrays
var fruitsArrays2: [String] = ["apples", "mango", "Orange", "apples"]

//sets
var fruitsarrays3: Set<String> = ["apples", "mango", "Orange", "apples"]

// remember
// apabila kita menginginkan data yang bisa ditulis 2 kali maka gunakan array, lalu apabil kita mau data kita ditulis 1 kali maka gunakan sets
// apabila kita meu data kita terorder dengan urut maka gunakan arrays, pabila data kit amau ditulis secara acak maka gunakan sets.
// pada array variable untuk mengakses si value of array bukan optional, jadi kita harus berhati hati dalam accessing value si array, apabila salah accessing atau out of bound of index, maka aplikasi kita akan crash.
// maka perlunya untuk mengakses array dengan safe menggunakan cara dibawah ini
// ingat cara dasar ini
// if namaArrays.indices.contains[indexYangMauDiakses] {
//      let item = NamaArrays[indexes]
// }


let getValue = ModelKecantikan()

let menagambilNilaiArray = getValue.productArray

var getNilaiPadaArray = getValue.productArray
