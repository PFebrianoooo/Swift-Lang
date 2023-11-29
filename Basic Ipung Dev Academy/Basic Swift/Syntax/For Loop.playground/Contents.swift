import UIKit

// for loop to arrays
var Names = ["jajang", "mulyanah", "Nurjanah", "Putra Pebriano", "harald arkan"]

for x in Names.sorted() {
    print("hello my name is \(x)")
}

print()
// for loop to tuples
var TuplesName = ["Gajah" : 4 , "Macan" : 4 , "Harimau" : 4 , "Ayam" : 2  , "Kucing" : 4 , "Tupai" : 4 , "Tikus" : 4]

for (x,y) in TuplesName {
    print("Name Animals is \(x), have \(y) legs")
}


// for loop indexes print
for x in 0...10 {
    print (x)
}

var i = 1
repeat {
    print("hello indexes \(i) hasilnya dikali 5 adalah \(i*5) ")
    i += 1
}while (i <= 10)

