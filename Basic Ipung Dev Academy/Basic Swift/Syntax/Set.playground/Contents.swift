import UIKit

// set swift
// set kosongan
var Nama = Set<String>()

// set isian
var PartOfAirport : Set = ["bandara", "helikopter" , "jet Tempur", "Pilot"]


// operasi set
Nama.insert("bandaiNamco")
Nama.insert("bandulan")
Nama.remove("bandaiNamco")
Nama.count
PartOfAirport.insert("kang parkir pesawat")
PartOfAirport.remove("kang parkir pesawat")
PartOfAirport.count

// if else statement
if PartOfAirport.isEmpty {
    print("access denied")
}else {
    for x in PartOfAirport {
        print("bagian yang ada di bandara \(x)")
    }
    print("\nsorted items of part of airport !\n")
    for y in PartOfAirport.sorted() {
        print(y)
    }
}

print ()
if PartOfAirport.contains("kang parkir pesawat"){
    print("ada")
}else {
    print("tidak ada")
}


let Daerah : Set = ["Bandung", "Jakarta", "Bogor", "Jambi"]
let Jawa : Set = ["Bandung", "Malang", "Yogyakarta", "Banten"]
let JawaBali : Set = ["Kudus", "Tabannan", "Ubud", "Jakarta", "Banten"]

// operasi sequence pada set.
Daerah.union(Jawa).sorted()
Jawa.intersection(JawaBali)
Jawa.symmetricDifference(JawaBali)
