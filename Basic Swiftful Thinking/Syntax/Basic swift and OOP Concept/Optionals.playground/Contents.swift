import Foundation

// ini disebut dengan tipe data boolean biasa.
var myBool: Bool = false

// ini yang disebut tipe data boolean optionals
var myBoolean: Bool? = nil

//print(myBoolean)
//myBoolean = false
//print(myBoolean)
//myBoolean = true
//print(myBoolean)
//myBoolean = nil
//print(myBoolean)

// Solusi
// print(myBoolean ?? false)
// yang menjadi optional adalah true or false nya karena sebelumnya udah di set nil

// nil coalescing starts
// this no problem
let valueSees1: Bool? = myBoolean

// if non optionals set to optional datatype perlu assign as a default args apabila nilainya nil. dan apabila valuenya ada maka jalankan value nya itu bukan si default nya. ini berlaku untuk semua tipe data.
let valueSees: Bool = myBoolean ?? false
print(valueSees.description)

//var myInt: Int? = nil
//print("The Value of type int is : \(myInt ?? 100)")

var myNumbers: Int? = 220401
print("The Value of type int is : \(myNumbers ?? 100)")
myNumbers = 220402
print("The Value of type int is : \(myNumbers ?? 100)")
myNumbers = nil
print("The Value of type int is : \(myNumbers ?? 100)")

// ================ Example ============= //

var isUserIsPremium: Bool? = nil

func isPremium() -> Bool? {
    return isUserIsPremium
}

func isPremium1() -> Bool {
    return isUserIsPremium ?? true
}
let isUserPremium = isPremium1()
print(isUserPremium)

// nil coalescing ends

// =============== Example unWrapping If Else =============== //
// menggunakan fungsi, if else statements dan guard statements yang dipelajari sebelumnya

// inwrapping optionals
var userIsPremium: Bool? = nil

// if else statements cara ke 1
//func isUserPremium1() -> Bool {
//    // jika ada nilainya di userIsPremium maka pake nilai dia dan di assign ke constant newValue
//    if let newValue = userIsPremium {
//        // sekarang punya akses dari nilai optional ke nilai standar dan bisa di operasikan disini.
//        return newValue
//    }
//    return false
//}


// cara ke 2
// kita assign userIsPremium ke if statements dan buatkan saya constant bernama userIsPremium dan bisa dilakukan manipulasi di dalam if nya.
func isUserPremium1() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// dua cara diatas untuk membantu gimana caranya unwrapping sebuah optionals kedalam if else statments dan buatkan lagi constantnya agar bisa dimanipulasi didalam fungsi if nya.


// ==================== Example unWrapping Guard statements ============= //
// unwrapping di guard statements

// cara ke-1
//func isUserPremium2() -> Bool {
//
//    guard let newValue = userIsPremium else {
//        return true
//    }
//    // have access to newValue
//    return newValue
//}


// cara ke-2
func isUserPremium2() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

// call func
let status = isUserPremium2()


// =================== Complex Example =================== //

var userIsNew: Bool? = true
var isUserCompleteOnboarding: Bool? = true
var userFavoriteMovie: String? = nil

// unwrapping variable optionals

// using if else statements
func checkIsUserIsSetup() -> Bool {
    if let userIsNew , let isUserCompleteOnboarding, let userFavoriteMovie {
        // if userIsNew == bool and
        // if userCompleteOnboarding == bool and
        // userFavoriteMovie == string
        return getUserStatus(
            userIsNew: userIsNew,
            isUserDidCompleteOnboarding: isUserCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    }
    // if userIsNew = nil OR
    // if UserCompleteOnboarding = nil OR
    // userFavoriteMovie = nil
    return false
}


// guard statements
func checkIsUserIsSetup2() -> Bool {
    guard let userIsNew, let isUserCompleteOnboarding, let userFavoriteMovie else {
        return false
        // for one of three is nil or both them nil
    }
    
    // for all true
    return getUserStatus(
        userIsNew: userIsNew,
        isUserDidCompleteOnboarding: isUserCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}


func getUserStatus(userIsNew : Bool , isUserDidCompleteOnboarding : Bool , userFavoriteMovie : String) -> Bool {
    if userIsNew && isUserDidCompleteOnboarding {
        return true
    }
    return false
}



// unwrapping piramida dimana setiap tinkatan memiliki akses untuk setiap variable untuk di manipulasikan mememgang prinsip parent child.
//if let else layered atau if let nested
func checkIsUserIsSetup3() -> Bool {
    
    if let userIsNew {
        // if userisnew = bool
        // we going to check this and manipulate just one variable in here
        if let isUserCompleteOnboarding {
            // if userisnew = Bool or
            // if usercompleteonboarding = Bool
            // we going to check it and manupulate 2 more variable in here
            if let userFavoriteMovie {
                // if userisnew = Bool or
                // if usercompleteonboarding = Bool OR
                // if userfavoritefood = String
                // we going to check it and manipulate 3 variables in here
                return getUserStatus(
                    userIsNew: userIsNew,
                    isUserDidCompleteOnboarding: isUserCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            }else {
                // if userisnew = nil or
                // if usercompleteonboarding = nil OR
                // if userfavoritefood = nil
                return false
            }
        }else {
            // userisnew = nil OR
            // usercompleteoboarding = nil
            return false
        }
    }else {
        // userisnew = nil
        return false
    }
}

//nested guard let statement
func checkIsUserIsSetup4() -> Bool {
    guard let userIsNew else {
        // userisnew = nil
           return false
    }
    // userisnew = bool
    
    guard let isUserCompleteOnboarding else {
        return false
    // isUserCompleteOnboarding = nil
    }
    // isUserCompleteOnboarding = Bool
    
    guard let userFavoriteMovie else {
        return false
        // userFavoriteMovie = nil
    }
    // userfavoritemovie = String
    return getUserStatus(
        userIsNew: userIsNew,
        isUserDidCompleteOnboarding: isUserCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}



// optional chaining
func getName() ->String? {
return ""
}

func getTittle() ->String {
    return "Namesss"
    
}


func getUserData() {
    
    let username: String? = getName()
    // "I Will get this if this is have a value or not nil"
    let count: Int = username?.count ?? 0
    
    let tittle: String = getTittle()
    // "I Always get this cause this is really sure have a value"
    let count2 = tittle.count
    
    
    // optional chaining.
    // if username  have a value, and first character have a value then return the lowercase
    // jika kita punya nilai di username maka lanjtkan cek apakah ada kata pertama dan setelah itu return lowercasenya.
    let isHaveaLowecased = username?.first?.isLowercase ?? false
    
    // gua bakalan get hitungan dari username karena pasti ada nilainya 100%. if the value is nil. your application will crash if this nil.
    let count3: Int = username!.count
    
}

//3 CARA UNTUK UNWRAP OPTIONALS
/*
 safely unwrap
 1. nil coalescing
 2. if let
 3. guard ;et
 */

/*
 unsafely unwrap
 1. explcit unwrapping ! but should not do
 */
