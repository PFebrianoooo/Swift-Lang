import Foundation

struct Quiz {
    // attributes
    let name: String
    let dateCreated: Date
    let isPremium: Bool
    
    
    // initializer starts
//    GIVING DEFAULT VALUE
//    init(name: String , dateCreated: Date = .now) {
//        self.name = name
//        self.dateCreated = dateCreated
//    }
    
//    GIVING AN OPTIONAL VALUE
    init(name: String , dateCreated: Date , isPremium: Bool?) {
        self.name = name
        self.dateCreated = dateCreated
        self.isPremium = isPremium ?? false
    }
    
    // Initializers ends

    
    func displayAllData(){
        print("Quiz name is \(self.name)")
        print("Date of examainations is \(self.dateCreated)")
        print("Is user premium quizzes or not (T/F) : \(self.isPremium)\n")
    }
    
}

//call struct and make object
//let mathemathic: Quiz = Quiz(name: "MATHEMATHIC", dateCreated: .now)
var myQuiz = Quiz(name: "Mathmemathic", dateCreated: .now, isPremium: nil)
myQuiz.displayAllData()

// call by one by one
//let call = myQuiz.dateCreated
//let call = myQuiz.isPremium
//let call = myQuiz.name
//print(call)

//cannot oprerated cause is a let constant
//mathemathic.name = "Indonesian Language"
//mathemathic.displayAllData()


// ================== Mutate Struct ================== //
// struct biasanya digunakan untuk data model. Misalkan object user, data modelnya terdiri atas nama, umur, jenis kelamin and etc.
// itu yang biasanya dipakai struct untuk data model.
// kosakata
// imutable = tidak bisa dilakukan perubahan secara langsung karena konstan
// mutable = dapat dirubah secara langsung karena variable
// mutate = memindahkan / mengubah / update data
// prinsip value pada struct u can mutateing or create a new version

// =================== Imutable structs ==================

// "Imutable Struct" = all is let constant = nggak bisa mutable = yang artinya cannot mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
    
}
// make an object
var user1 = UserModel(name: "Putra", isPremium: false)

// change value with another way
//print(user1)
//user1 = UserModel(name: user1.name, isPremium: true)
//print(user1)

// get
//user1.name
//user1.isPremium


// set
func changeUserIsPremium() {
    print(user1)
//    mutate the struct
    user1 = UserModel(name: user1.name , isPremium: true)
    print(user1)
}

//changeUserIsPremium()

// ===================== Mutable Struct =======================


// "Mutable Struct" = one or all attributes is variable
struct UserModel2{
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nickolash", isPremium: false)

// way one
//print(user2)
//user2.isPremium = true
//print(user2)


// cara kedua
func changeUserIsPremium1() {
    print(user2)
//  mutate the struct
    user2.isPremium = true
    print(user2)
}

changeUserIsPremium1()
print("\n")

//kesimpulan antara antara mutable struct dan imutable struct
/*
 Bahwa keduanya mutate struct antara cara ke 1 dan cara ke 2 merupakan sama namun dengan sedikit cara yang berbeda yang membuat bingung kejaidannya terjadi dibelakang layar sehingga dirasa sulit untuk mengidentifikasinya.
 intinya keduanya sama caranya yang menjadi patokan bahwa objeknya yang merupakan variable (var) which is user1 and user2 beda cerita kalo  konstant (let)
 
 mutating struct dilakukan diluar struct
 */


// ==================================================== //
// Melakukan update didalam struct
// imutable struct
// disarankan make yang ini.
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func updateIsPremiumInfo(updateStatus: Bool) ->UserModel3 {
        return UserModel3(name: self.name, isPremium: updateStatus)
    }
    
}

var botak = UserModel3(name: "jamal Hammadi", isPremium: false)
print(botak)
botak = botak.updateIsPremiumInfo(updateStatus: true)
print(botak)


// mutable struct
struct UserModel4 {
    let name: String
    private (set) var isPremium: Bool
    
    mutating func updateIsPremiumInfo(update: Bool){
        isPremium = update
    }
}

var userPlay = UserModel4(name: "Jamal Hammadi", isPremium: false)
print(userPlay)
userPlay.updateIsPremiumInfo(update: true)
print(userPlay)

// still can change from outside
//userPlay.isPremium = false

//to fix this useing private(Set)


// Mutating digunakan untuk mengubah attribut struct atau mutate struct apabila dalam kondisi attributnya itu berupa variable
// nah kalo attributnya berupa constant maka kita perlu menggunakan return function ke struct untuk mengupdate attributnya
// private set digunakan untuk attribut yang berupa variable diamana hanya dapat diubah didalam struct itu sendiri menggunakan fungsi yang sudah disediakan.


// Rangkuman Pribadi
//1. bahwa yang ingin ditunjukkan disini adalh bahwa ingin mengasih tau kalo divideo ini ingin menunjukkan konsep getter and setter method pada encapsulasi. i can take this as a encapsulation, dimana kita hanya bisa menggunakan data dan mengubah data menggunakan setter
//2. imutable dan mutable yang pertama dilakukan diluar dari struct, sedangakan keduanya dilakukan didalam struct yang disebut dnegan getter and setter method, tetapi disini set nya aja yang ditunjukkan. kita bisa mengambil data secara langsung dengan menggunakan ->  panggilnamaobjek.attributyangmaudicall



// Mereview Struct agar tidak lupa.
struct MereviewStruct {
    let member: String
    let jumlah: Int
    
    func merubahValuePadaStruct(update: Int) -> MereviewStruct {
        return MereviewStruct(member: self.member, jumlah: update)
    }
    
}

var name = MereviewStruct(member: "Jamal", jumlah: 10)
print(name)
var name2 = name.merubahValuePadaStruct(update: 100)
print(name2)


struct ContohNama {
    private (set) let name: String
    
    func merubahStruct(name: String) -> ContohNama {
        ContohNama(name: name)
    }
}

