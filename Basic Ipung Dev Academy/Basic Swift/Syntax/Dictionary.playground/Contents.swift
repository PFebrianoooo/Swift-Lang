// dictionary pada swift
// Putra Pebriano Nurba

import UIKit

// inisialisasi kosongan
var Airports = [String : String]()

// add items to dictionary airports.
Airports["CGK"] = "Bandara Cendana"
Airports["BDG"] = "Bandara Bandung"
Airports["KRT"] = "Bandara Kertajati"
Airports.count

// inisialisasi literals
var Bandara : [Int : String] = [10 : "Bandara Jakarta", 20 : "Bandara Malaysia", 30 : "Bandara Singapore", 40 : "Bandara Vietanam"]

// add items to literals inisialisation
Bandara[50] = "Bandara Jawa"
Bandara[60] = "Bandara Kualanamu"
Bandara[70] = "Bandara Thailand khap-khap"
Bandara.count



// cetak keduanya
if Airports.isEmpty {
    print("Didnt have a data")
}else {
    for x in Airports.keys {
        print ("key in airports dictionary is : \(x)")
    }
    print("\nValues !!!\n")
    for x in Airports.values {
        print("value in airports dictionary is \(x)")
    }

}
print ("===========================================")

if Bandara.isEmpty {
    print("Didnt have a data")
}else {
    for x in Bandara.keys.sorted() {
        print ("key in Bandara dictionary is : \(x)")
    }
    print("\nValues !!!\n")
    for x in Bandara.values.sorted() {
        print("value in Bandara dictionary is \(x)")
    }

}


// contoh kasus pada api.
var ResponseMessage = [20 : "OK",
                       30 : "access granted",
                       40 : "file not found",
                       50 : "internal server error"]

let httpsresponcecode = [20,30,40,50]

for code in httpsresponcecode {
    if let message = ResponseMessage[code] {
        print("the code is \(code) : \(message)")
    }else {
        print("file not found")
    }
}
