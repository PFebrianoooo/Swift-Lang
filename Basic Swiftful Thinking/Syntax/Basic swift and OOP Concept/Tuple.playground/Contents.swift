import Foundation


var username: String = "Putra"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUsername() -> String {
    return username
}

func getUserIsPremium() -> Bool {
    return userIsPremium
}

// fungsi biasa yang hanya dapat menggembalikan 1 tipedata
func getUserInfo() -> String {
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return name
}

// TUPLES
// tuples yang dapat mengembalikan 2 tipedata atau lebih dalam fungsi
// memanggil data dengan bantuan fungsi
func getUserInfo1() -> (String, Bool){
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

//tuple dalam pernyataan biasa variable atau constant.
let userdata1: String = username
let userdata2: (String, Bool, Bool) = (username, userIsPremium, userIsNew)

// calling isi tuple dengan 2 cara.
//1. dengan bantuan variable
let info = getUserInfo1()
let name1: String = info.0
let isPremium1: Bool = info.1

//2. dengan tanpa variable dan mengandalkan fungsi itu sendiri.
getUserInfo1().self
getUserInfo1().0
getUserInfo1().1

// kedua hasil diatas sama tetapi menggunakan cara yang berbeda.
print("hello my name is\(name1), and am i premium on spotify ? \(isPremium1)")


// tuple dengan perameter pengembalian tipe data.
func getUserInfo2() -> (name: String, isPremium: Bool){
    let name = getUsername()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}
// calling tuple with 2 way

// with a help of variable
let info1 = getUserInfo2() // calling out all
let name2 = info1.name // piece by piece
let isPremium2 = info1.isPremium

// dengan fungsi itu sendiri
getUserInfo2() // calling out all
getUserInfo2().name // piece by piece
getUserInfo2().isPremium


// tuple are scalable.
func getUserInfo3() -> (name: String, isPremium: Bool, isNew: Bool){
    return (username, userIsPremium, userIsNew)
}

func doSomethingWithGetUserInfo(parameters: (name: String, isPremium: Bool, isNew: Bool)) -> (informations: String, statements: Bool){
    let name = parameters.name
    let isPremium = parameters.isPremium
    let isNew = parameters.isNew
    
    guard isPremium && isNew else {
        return ("hello this username calls \(name) isnt premium on spotify", false)

    }
        return ("hello username calls \(name) now is premium on spotify", true)
}

func displayUserInfo(statements: String, TF: Bool) {
    print(statements + " \(TF) for people call this premium")
}


// calling out all and manipulated

let maanipulated = getUserInfo3()
let manipulasiTuple = doSomethingWithGetUserInfo(parameters: maanipulated)

// used every part of dosomethingwithuserinfo.
let isiYangkesatu: String = manipulasiTuple.informations
let isiYangKedua: Bool = manipulasiTuple.statements

displayUserInfo(statements: isiYangkesatu, TF: isiYangKedua)

