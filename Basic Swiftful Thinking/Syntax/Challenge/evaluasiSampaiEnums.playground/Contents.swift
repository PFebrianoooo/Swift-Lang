import Foundation

// pertemuan ke-1 starts //
var a = "hello Putra Pebriano"
print(a)

// this is single line comment
/*
 this
 is
 multiline
 Comments
 */

var camelCase: Bool
var snake_case_type: String

// pertemuan ke-1 ends //

// Pertemuan ke-2 starts //
// basic type swift

// play agains word and character
let string: String = "Hello putra pebriano"
let char: Character = "A"

// play agains numbers
let int: Int = 10
let float: Float = 3.14
let cgFloat: CGFloat = 30.00 // use for UI
let double: Double = 3.15 // Use for math operators

// play agains Booleans
var trues: Bool = true
var falses: Bool = false

// Pertemuan ke-2 ends //

// Pertemuan ke-3 starts //

let imutable = 10
//imutable = 20

var mutable = 10
mutable = 20

// pertemuan ke-3 ends //

// Pertemuan ke-4 starts //
let kondisi1 = 10
let kondisi2 = 20

if kondisi1 < kondisi2 {
    // args
}else if kondisi1 > kondisi2 {
    // args
}else {
    
}

//ternary operator
kondisi1 < kondisi2 ? "True" : "False"

// logical operator
/*
 and or not
 */

// conditional operator
/*
 >
 >=
 <
 <=
 !=
 */

// artimethic Operator
/*
 +
 -
 /
 *
 %
 */

// fizz buzz challenge

for x in 0...100 {
    if x % 5 == 0 && x % 3 == 0 {
        print("Fizz Buzz")
    }else if x % 3 == 0 {
        print("Fizz")
    }else if x % 5 == 0 {
        print("Buzz")
    }else {
        print(x)
    }
}
// Pertemuan ke-4 ends //


