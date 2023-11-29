import Foundation

let namaSiswa = "Putra Pebriano Nurba"
var nilaiKeaktifan = 100
var nilaiTugas = 100
var nilaiUjian = 100

let nilaiMurniKeaktifan : Double = Double (nilaiKeaktifan) * 0.2
let nilaiMurniTugas : Double = Double (nilaiTugas) * 0.3
let nilaiMurniUjian : Double = Double (nilaiUjian) * 0.5

let nilaiAkhir : Int = Int (nilaiMurniTugas + nilaiMurniUjian + nilaiMurniTugas)


print("siswa yang bernama \(namaSiswa)")
print("memperoleh nilai presentasi yang diberikan !")
print("Nilai Keaktifan   *20% = \(nilaiMurniKeaktifan)")
print("Nilai Tugas       *30% = \(nilaiMurniTugas)")
print("Nilai Ujian       *50% = \(nilaiMurniUjian)")
print("Jadi siswa yang bernama \(namaSiswa) memperoleh nilai akhir sebesar \(nilaiAkhir)")

