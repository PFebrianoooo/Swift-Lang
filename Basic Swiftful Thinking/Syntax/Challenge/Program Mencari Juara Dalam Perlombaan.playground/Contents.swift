import Foundation

let namaSiswa = "Putra Pebriano Nurba"
var nilaiLomba1 = 100
var nilaiLomba2 = 100
var nilaiLomba3 = 100

let total = nilaiLomba1 + nilaiLomba2 + nilaiLomba3
let rataRata = total/3

func penentuanJuara (nilaiRataRata : Int) {
    if nilaiRataRata > 80 {
        print("Memperoleh nilai rata rata \(rataRata) Menjadi juara ke-1 dari perlombaan yang diikutinya")
    }else if nilaiRataRata > 75 {
        print("Memperoleh nilai rata rata \(rataRata) Menjadi juara ke-2 dari perlombaan yang diikutinya")
    }else if nilaiRataRata > 65 {
        print("Memperoleh nilai rata rata \(rataRata) Menjadi juara ke-3 dari perlombaan yang diikutinya")
    }else {
        print("Memperoleh nilai rata rata \(rataRata) Mohon maaf untuk perlombaan kaliini belum juara")

    }
}

print("Siswa yang bernama \(namaSiswa)")
penentuanJuara(nilaiRataRata: rataRata)

