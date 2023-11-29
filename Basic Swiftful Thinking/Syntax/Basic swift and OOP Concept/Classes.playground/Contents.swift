import Foundation

// class in swift
// class is slower than struct.
// class live in heap memory.
// object di class merupakan refrence type.
// reference type pointing ke object di memory dan update the object in memory.


// MVVM architecture in Ios Mobile App
// MVVM (MODEL , VIEW , VIEWMODEL)
// MODEL = Model berisi data dasar seperti int, Double, Float , Boolean.
// View = View berisi tampilan ui yang ada di hanphone
// ViewModel = ViewModel merupakan menautkan antara model dan view, serta membuat animasi kepada ui.
/*
 struct MyScreen {
 // arguments
 }
 */

// jadi bayangkan kalo kita punya layar dimana layar is MyScreen, semua data yang ada di my screen datang dari ViewModel


// all data dibutuhkan untuk beberapa layar/screen
class ScreenViewModel {
    let tittle: String
    private(set) var showButton: Bool
    
    // init class sama halnya dengan struct tetapi di class menggunakan init secara ekplisit
    // crate an object
    init(tittle: String, showButton: Bool){
        self.tittle = tittle
        self.showButton = showButton
    }
    
    // remove/delete the object
    deinit {
        // berjalan ketika object saat akan dihapus dari memory
        // struct hasn't have deinit, cause struct is value type
    }
    
    func hideShowButton() {
        showButton = false
    }
    
    func updateShowButton(update: Bool){
        showButton = update
    }
}

// Notice: Kita menggunakan "let" when make on class object. because
// object nya sendiri tidak berubah melainkan nilai yang didalamnya yang berubah.

let viewModel: ScreenViewModel = ScreenViewModel(tittle: "Screen 1", showButton: true)

// kita bisa merubah nilainya diluar atau didalam class itu sendiri melalui fungsi
// cannot cause we set access modifier to private set
// viewModel.showButton = false
viewModel.hideShowButton()
viewModel.updateShowButton(update: true)


// sebenernya yang terjadi adalah kan sebelumnya dielasin bahwa class not copy and paste for mutating but edit in the object. nah disini object itu adalah viewModel yang sudah di init yang artinya dia sudah dibuat di memory dan viewModel sebenrnya merupakan pointer untuk object yang ada di memor

/*
 kapanpun kita mutate/mengubah struct sebenarnya by default udah di deinit / dihapus, karena dilakukan dibelakang layar.
 lalu saat di class kita harus menghapusnya agar tidak terlalu banyak object yang hidup for make my app is no slow, terlalu banyak object class maka akan membuat aplikasi kita laggy/lamban
 
 // kalo di struct kita menggunakan variable(var) untuk menginit sebuah objeect nya. di class untuk inisialisasi/init an object we use a constant(let) dan untuk get value pun menggunakan let
 // kalo di class objectnya tidak beurbah tetapi isinya yang berubah
 misalkan inisialisasi
 // make an object in struct and class
 // struct
 var userModel: ModelUser = ModelUser(name: "Jonathan", age: 19)
 
 // class
 let viewModel: ScreenViewModel = ScreenViewModel(tittle: "screen 1", showButton: true)
 
 */

// kesimpulan dari kedua video antara stuct dan class keduanya menjelaskan bagaimana mengupdate sebuah value dan mendapatkan sebuah value dengan metode getter and setter


//contoh lainnya

class MenuViewModel {
    let tittle: String
    private(set) var  button: Bool
    
    init(tittle: String, button: Bool) {
        self.tittle = tittle
        self.button = button
    }
    
//    setter
    func deleteButton() {
        button = false
    }
    
    func updateButtonView(update: Bool) {
        button = update
    }
}


// make an objects
let object1: MenuViewModel = MenuViewModel(tittle: "Screen 2", button: true)

// setter
object1.deleteButton()
object1.updateButtonView(update: true)

// get value
let buttonValue = object1.button

// Mereview peblejaran agar tidak lupa.

class MereviewKelas {
    let name: String
    private (set) var kelas: Int
    
    init(name: String, kelas: Int) {
        self.name = name
        self.kelas = kelas
    }
    
    func merubahIsiDdidalamKelas(update: Int) {
        kelas = update
        
    }
}


let kelas1: MereviewKelas = MereviewKelas(name: "Bandi", kelas: 12)
print(kelas1.kelas)

kelas1.merubahIsiDdidalamKelas(update: 7)
print(kelas1.kelas)

