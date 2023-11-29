import Foundation

// bahwa apabila math problem operator gunakan double.
// buat desain ui gunakan CGFloat

//var numberPlayers: Double = 6
//var commentCount: Double = 0
//var viewCount: Double = 100

// Operator
// operator basics aritmethic

// Pertambahan
// numberPlayers = numberPlayers + 6
// numberPlayers += 6

// Pengurangan
// numberPlayers = numberPlayers - 3
// numberPlayers -= 3

// Perkalian
// numberPlayers = numberPlayers * 1.5
// numberPlayers *= 1.5

// Pembagian
// numberPlayers = numberPlayers / 9
// numberPlayers /= 9

// Modulo
//var arrays = [1,2,3,4,5,6,7,8,9,10]
//for x in arrays {
//    if x % 2 == 0{
//        print(x)
//    }
//}

// math opration
// remember KABATAKU
// (kali, bagi, tambah, kurang) dari 1 dan seterusnya dieksekusi pertama.
// numberPlayers = (numberPlayers * 2.3) - 2


var numberPlayers: Double = 6
var commentCount: Double = 0
var viewCount: Double = 100

if numberPlayers == 6 {
    print("you have 6 likes")
}else {
    print("you might have more 6 likes")
}

if numberPlayers != 6 {
    print("you might have more 6 post")
}else {
    print("you have 6 post")
}

if numberPlayers < 6 {
    print("kamu punya kurang dari 5 postingan")
}

if numberPlayers <= 6 {
    print("kamu punya kurang dari sama dengan 6 postingan")
}

if numberPlayers > 6 {
    print("kamu punya lebih dari 7 postingan")
}

if numberPlayers >= 6 {
    print("kamu punya lebih dari sama dengan 6 postingan")
}

// logical operator and conditional operator
 commentCount += 2

// keduanya harus benar. (AND)
if numberPlayers >= 6 && commentCount > 0 {
    print ("this is example of and operator")
} else {
    print("there one wrong or two wrong in logical operator")
}


// salah satu benar is true, keduanya salah false
if numberPlayers >= 6 || commentCount >= 0 {
    print("this is example of OR operator")
}else {
    print("there is two wrong on conditonal")
}


var havePassword = true
var NoPassword = true
var haveFaceId = false

// chaining AND OR logical operator
if  havePassword || (haveFaceId && NoPassword)  {
    print("this is example of OR AND logical operator")
}else {
    print("there is two wrong on conditonal logic")
}


if  (havePassword || haveFaceId) && !NoPassword  {
    print("this is example of OR AND logical operator 2")
}else {
    print("there is two wrong on conditonal logic 2")
}


// nested if statements
var a = 3
if a >= 0 {
    print ("print pertama")
}else if a == 3 {
    print("print Kedua")
}else {
    print ("else statements print")
}
