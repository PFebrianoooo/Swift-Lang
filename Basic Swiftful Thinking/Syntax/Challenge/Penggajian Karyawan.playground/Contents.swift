import Foundation

let gajiPokok = 300000

let namaKaryawan = "Doyok Albuquerque"
var golonganJabatan = 1
var golonganPendidikan = "SMA"

// tunjangan jabatan
func tunjanganJabatan (Golongan : Int){
    if Golongan == 1 {
        let tunjangan = Double(gajiPokok) * 0.05
        print("tunjangan jabatan    RP \(tunjangan)")
    }else if Golongan == 2 {
        let tunjangan = Double(gajiPokok) * 0.05
        print("tunjangan jabatan    RP \(tunjangan)")
    }else if Golongan == 3 {
        let tunjangan = Double(gajiPokok) * 0.05
        print("tunjangan jabatan    RP \(tunjangan)")
    }else {
        print("Inputan nilai salah")
    }
}

// tunjangan pendidikan
func tunjanganPendidkan (Pendidikan : String){
    if Pendidikan == "SMA" {
        let tunjangan = Double(gajiPokok) * 0.025
        print("tunjangan pendidikan RP \(tunjangan)")
    }else if Pendidikan == "D1" {
        let tunjangan = Double(gajiPokok) * 0.05
        print("tunjangan pendidikan RP \(tunjangan)")
    }else if Pendidikan == "D3" {
        let tunjangan = Double(gajiPokok) * 0.20
        print("tunjangan pendidikan RP \(tunjangan)")
    }else if Pendidikan == "S1" {
        let tunjangan = Double(gajiPokok) * 0.30
        print("tunjangan pendidikan RP \(tunjangan)")
    } else {
        print("Inputan Pendidikan salah")
    }
}



print("pegawai yang bernama \(namaKaryawan)")
print("honor yang diterima  RP \(gajiPokok)")
tunjanganJabatan(Golongan: golonganJabatan)
tunjanganPendidkan(Pendidikan: golonganPendidikan)



