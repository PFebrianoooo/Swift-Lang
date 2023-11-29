import UIKit

// style Menulis Variable dan constant
/*
 type anotasi / anotations
 var nama:String
   nama = "Putra"
 
 let nama : String
   nama = "putra"
 
 type konotasi /konotations
 var nama = "Putra"
 let nama = "Putra"
 
 
 */

// deklarasi variable dan constant
//var Nama = "Putra"
//let Jabatan = "Lead software engineer"

// operasi pada variable dan constant
// variable termasuk variable imutable yang dapat diubah valuenya.
// constant termasuk variable muteable yang tidak dapat dirubah valuenya.

// variable
var NamaDepan = "Fajri"
var NamaTengah = "Pebriano"
var NamaBelakang = "Nurba"

NamaDepan = "Putra"

let FullName = NamaDepan + " " + NamaTengah + " " + NamaBelakang

// cara ke-1
//print (NamaDepan + " " + NamaTengah + " " + NamaBelakang)

// cara ke-2
print (FullName)


// constant
let FirstName = "Fajri"
let MiddleName = "Al"
let LastName = "Ghifari"


let NamaPanjang = FirstName + " " + MiddleName + " " + LastName
print (NamaPanjang)

/*
eroor
 
FirstName = "Putra"

alasannya
 note: change 'let' to 'var' to make it mutable
 dikarenakan var constant maka tidak bisa melakukan operasi seperti variable.
*/

// string interpolation
var gaji = 10000000

print ("Gaji saya dalam sebulan adalah : \(gaji)")


// penggunaan semicolon atau titik koma
let Jabatan = "Lead Software Engineer" ; print ("jabatan saya adalah : \(Jabatan)")

