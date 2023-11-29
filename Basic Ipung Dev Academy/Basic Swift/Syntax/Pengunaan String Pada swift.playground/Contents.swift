import UIKit

var Nama = "Putra Pebriano Nurba" // single line string
var FullName = """
Putra Pebriano Nurba \
Teknik Informatika
Universitas Muhamadiyah Jakarta
Jl. Pinang Rt02/014 Pamulang Timur, Pamulang , Kota Tangerang Selatan Banten.
"""

//special character in string
let DollarLogo = "\u{24}"
let WhiteHeart = "\u{2665}"
let RedHeart = "\u{1F496}"

// empty string
var emptystring = String()
emptystring = "bandi"

if emptystring.isEmpty {
    print("welcome \(Nama)")
}else {
    print("string is exist")
}

// inserting string
emptystring.insert("h", at: emptystring.endIndex)
emptystring.append("r")
emptystring.insert(contentsOf: "hello bradeurr ", at: emptystring.index(after: emptystring.startIndex))
emptystring.remove(at: emptystring.startIndex)
emptystring.removeLast() 
emptystring.append(" welcomeee")
print(emptystring)


