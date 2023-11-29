import Foundation

struct CarModel {
    // memanggil enum ke brand dnegan scope
    let brand: BrandModelOptions
    let model: String
}

struct BrandModel {
    let tittle: String
}


// enum hidup di tempat yang sama seperti struct tapi kita tidak bisa untuk mutate atau mengubahnya.
enum BrandModelOptions {
    // cara menulis case ke-1
    case toyota
    case honda
    // cara menulis case ke-2
    case mercedesBenz, lamborghini
    
    
    // sama seperti fungsi biasa
    var typeCar: String {
        switch self {
//        case .toyota:
//            return "Toyota"
        case .honda:
            return "Honda"
        case .mercedesBenz:
            return "Mercedez-Benz"
        case .lamborghini:
            return "Lamborghini"
        default :
            return "Default Case"
        }
    }
}

// cara yang pertama manual type (Not Preferable)
// rentan akan kesalahan input misalkan coffee yang bukan tipe mobil tapi tetap di acc compiler
//var car1 = CarModel(brand: "Toyota", model: "Fortuner")
//var car2 = CarModel(brand: "coffee", model: "Camry")
//var car3 = CarModel(brand: "Lamborgini", model: "Urus")



// cara dengan menggunakan bantuan struct (Not Preferable)
// rentan akan salah juga dalam input terbukti bahwa coffee tetap saja bisa di gunakan walau bukan tipe brand mobil
//let type1: BrandModel = BrandModel(tittle: "Lamborghini")
//let type2: BrandModel = BrandModel(tittle: "coffee")
//let type3: BrandModel = BrandModel(tittle: "Toyota")
//
//
//var car1 = CarModel(brand: type1 , model: "Urus")
//var car2 = CarModel(brand: type2 , model: "camry")
//var car3 = CarModel(brand: type3 , model: "Fortuner")



// cara dengan menggunakan enum (preferable)
// membuat jadi lebih restricted kepada hal yang sesuai yang dimana kita tau bahwa brand mobil sudah diketahui dnegan menggunakan enums
var car1: CarModel = CarModel(brand: .lamborghini, model: "Civic Turbo")
var car2: CarModel = CarModel(brand: .toyota, model: "Fortuner")
var car3: CarModel = CarModel(brand: .lamborghini, model: "Urus")

var lamboModel: BrandModelOptions = .lamborghini
lamboModel.typeCar
print(lamboModel.typeCar)

// jadi bisa saja orang menaruh brand mobil disini selain mobil, misalkan coffee, nah untuk membuat dia lebih restricted kita bisa menggunakan enum, dengan menaruh beberapa merk mobil kedalam enum tetapi pada saat runtime kita sudah tau data data yang ada dan memanggilnya dnegan menggunakan perintah dot(.) fungsinya enum agar lebih mudah dalam pengorganisasian

// Komposisi enums
// 1. case
// 2. Computed Variable
// var tittle: String {
    // args
// }
// memanggil cara diatas dengan cara menuliskan variable dan dot
// switch case must be exhaustive / mengcover smeua kemungkinannya, atau apabila tidak mau cover semua kemungkinannya, maka berikan case default nya.

// yang harus diperhatikan saat mebuat enum adalah kita harus rau case case yang digunakan pada saat runtime, apabila tidak tau maka kita bisa menggunakan cara yang kedua.



// simple example

struct UserModel {
    let name: String
    let favoriteLearning: favoriteLearningOptions
    let colorLiked: String
    
    func printAllData() {
        print("Hello my name is \(name)")
        print("My favorite Learning is \(favoriteLearning) and i also like \(colorLiked) colour")
    }
}

enum favoriteLearningOptions {
    case math, indonesian, english, alghoritms
}

let user1: UserModel = UserModel(name: "Jamal Hammadi", favoriteLearning: .math, colorLiked: "Orange")
user1.printAllData()
