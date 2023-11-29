import Foundation

let name = "Putra Pebriano Nurba"
var nilaiKeaktifan = 80
var nilaiTugas = 90
var nilaiUjian = 95

// nilai murni
let nilaiMurniKeaktifan = Double(nilaiKeaktifan) * 0.20
let nilaiMurniTugas = Double(nilaiTugas) * 0.30
let nilaiMurniUjian = Double(nilaiUjian) * 0.50

let totalNilaiMurni = nilaiMurniTugas + nilaiMurniKeaktifan + nilaiMurniUjian


func penentuanGrade (NilaiMurni : Double){
    if NilaiMurni > 80 {
        print("Memperoleh Nilai Akhir sebesar \(totalNilaiMurni) dan mendapatkan grade A")
    }else if NilaiMurni > 70 {
        print("Memperoleh Nilai Akhir sebesar \(totalNilaiMurni) dan mendapatkan grade B")
    }else if NilaiMurni > 56 {
        print("Memperoleh Nilai Akhir sebesar \(totalNilaiMurni) dan mendapatkan grade C")
    }else if NilaiMurni > 46 {
        print("Memperoleh Nilai Akhir sebesar \(totalNilaiMurni) dan mendapatkan grade D")
    }else {
        print("Memperoleh Nilai Akhir sebesar \(totalNilaiMurni) dan mendapatkan grade E")
    }
}

print ("Siswa yang bernama \(name)")
penentuanGrade(NilaiMurni: totalNilaiMurni)


