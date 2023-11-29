import Foundation

// inisialisasi fungsi
func callMyName() {
    print("Hello Putra Pebriano Nurba")
}
callMyName()

// fungsi dapat memanggil fungsi lainnya didalam fungsi.
func myFirstFunctions() {
        print("THIS IS MY FIRST FUNCTIONS")
    mySecondFunctions()
    myThirdFunctions()
}
func mySecondFunctions() {
        print("THIS IS MY SECOND FUNCTIONS")
}
func myThirdFunctions() {
        print("THIS IS MY THIRD FUNCTIONS")
}
myFirstFunctions()

// kontrol akses didalam fungsi (Access Control Functons)
func getMyName() {
    var fullName = "Putra Pebriano Nurba"
    print("My fullname is \(fullName)")
}

// fullName = "Fajri"
getMyName()


// mengembalikan data didalam fungsi kedalam fungsi
// fungsi dengan pengembalian data.

func gettingMyName() -> String {
    var fullname = "Muhammad Fajri Al Ghifary"
    print("My second fullname is \(fullname)")
    return fullname
}

var myNameIs = gettingMyName()
print(myNameIs)
myNameIs = "Ahmad Jalaludin"
print(myNameIs)

// control flow dalam fungsi.
func openingMainView() -> String {
    let isUserHavePassword = false
    let isUserHaveUsername = true
    
    // apabila punya keduanya maka langsung ke login screen.
    if  !isUserHavePassword && isUserHaveUsername {
        return "Welcome to login screen"
        
    }else {
        return "Check is correct password or username or click button below to make an account"
    }
}

let userGoToMainView = openingMainView()
print(userGoToMainView)

// apabila data berada di file terpisah, maka perlu adanya referencing yang termuat dalam fungsi dengan parameter.
// Fungsi dengan parameter.

func showingFirstScreen() -> String {
    let status = showFirstScreen()
    
    if status == true {
        return "Opening home Screen"
    }
    return "Cannot show home screen"
}

func showFirstScreen() -> Bool {
    let isUserHaveRecordLogin = true
    let isUserHavePassword = false
    let isUserHaveusername = true
    let status = userOpenMainView(userhavePassword: isUserHaveusername, userHaveUsername: isUserHaveusername, haveRecordedPassword: isUserHaveRecordLogin)
    
    if status == "Open main view" {
        return true
    } else if status == "Opening main view for user" {
        return true
    }
    return false
    
}

func userOpenMainView(userhavePassword : Bool, userHaveUsername : Bool, haveRecordedPassword : Bool) -> String {
    
    if userhavePassword && userHaveUsername || haveRecordedPassword {
//        doSomethingView(doSomething: userhavePassword)
        return "Open main view"
    }
    
    // seperti else pada control flow
    return "user must make an account"
}


//func doSomethingView(doSomething : Bool) {
//    // arguments
//}


// call chaining function show first screen.
let status = showingFirstScreen()
print(status)


// ========================================== //
// Example
// control flow returning func example. who will execute
 
// Bagian A
//func doSomething() -> String {
//    let isBool : Bool = false
//    
//    if isBool {
//    return "New"
//    }
//    return "Not New"
//}
// doSomething()

// Bagian B
//func doSomething() -> String {
//    let tittleFilm = "Avengers"
//
//    if tittleFilm == "Avengers" {
//    return "Marvel Avengers"
//    }
//    return "Not Marvel Avengers"
//
//    Diabaikan kalo udah mengembalikan fungsi
//    if tittleFilm == "handai"{
//
//    }
//}
//doSomething()

// Guard Statements
//func doSomething() {
//    let tittle = "Avengers"
//
//    // pastikan tittle = "Avengers"
//    guard tittle == "Avengers" else {
//        return "This is not Marvel"
//    }
//    print("Marvel Avengers")
//}

//doSomething()

//func doSomething(doSomething : Bool){
//    let status = doSomething
//
//    guard status == true else {
//        return "this is false
//    }
//    print("this is true")
//}
//
//doSomething(doSomething: false)

// Calculate variable
// we use this when theres no referencing datatypes
var a = 10
var b = 13

func calculate1() -> Int {
    return a + b
}

func calculate2(a : Int , b : Int) -> Int {
    return a + b
}

var calculate: Int {
    return a + b
}

// implementasi calculate area sederhana dengan control flow
var ketahuiIPK: String {
    let ipk = 3.0
    if ipk > 3.0 {
        return "Ipk anda besar"
    }else if ipk > 2.0 {
        return "Ipk anda lebih dar dua"
    }
    return "Ipk anda kecil"
}

var ketahuiIPK1: String {
    let ipk = 3.0
    guard ipk >= 3.0 else {
        return "Ipk anda lebih dari 3"
    }
    return "ipk anda lebih kurang dari 2"
    // code after return will not be executed.
//    return "Ipk anda lebih dari 3"
}


//let c = calculate1()
//let c = calculate2(a: a, b: b)
let c = calculate


