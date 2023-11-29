import UIKit
// basic operator pada swift.
/*
 Perkalian " * "
 Pembagian " / "
 Pertambahan " + "
 Pengurangan " - "
 Modulus " % "
 */

// Assignment Operator
let a = 10
var b = 5

b = a
print(b)


// Unary Operator
let c = 10
let d = -a

let Result = -d

print (Result)

// aritmethic unary opeartor
var e = 100
e += 200
e -= 100
e *= 10
e /= 10
e %= 12

// comparison Operator
let f = 10
let g = 15

if f >= g {
    print ("your value is right \(f) more than equal \(g)")
}else {
    print("your value is wrong \(f) less than equal \(g)")
}


// ternary operator
let h = 1
let i = 2

( h < i ? print ("hello there") : print ("hello you"))


// range operator
for x in 0...5 {
    print ("loop pada angka ke - \(x)")
}

print ()
// half range operator.
let Product = ["Biskuit", "Beras", "Gandum", "Nanas", "khongGuan"]

for x in 0..<Product.count {
    print ("Nama Product ke \(x + 1) adalah \(Product[x])")
}

// Operator logical.
// Not And Or.

var Isdefault = true
var isdefault1 = false

// and
if Isdefault && isdefault1 {
    print ("helo")
} else {
    print ("not Printed because all must be true")
}

// not
print(!Isdefault)

// or
if isdefault1 || Isdefault {
    print("hello this is right boolean")
}else {
    print("this is wrong answer boolean")
}


// and or

if isdefault1 && Isdefault || !Isdefault {
    print("welcome")
}else {
    print("access denied !!")
}

