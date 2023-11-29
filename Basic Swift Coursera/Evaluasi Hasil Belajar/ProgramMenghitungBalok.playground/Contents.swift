import Foundation

// Program Menghitung volume dan luas balok.

// Attributes
var panjang = 20
var lebar = 12
var tinggi = 10

// volume
let volumeBalok = panjang * lebar * tinggi

// luas Permukaan
let luasPermukaan = 2 * ((panjang * lebar) + (panjang * tinggi) + (lebar * tinggi))


print("Diketahui Sebuah balok dengan panjang \(panjang) CM, lebar \(lebar)CM dan tinggi \(tinggi)CM. Tentukan luas Permukaan Balok dan volume balok berdasarkan panjang lebar dan tinggi diatas.")

print("volume Balok adalah : \(volumeBalok)CM")
print("Luas Permukaan Balok adalah : \(luasPermukaan)CM")
