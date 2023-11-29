import Foundation

// WHAT IS OOP (OBJECT ORIENTED PROGRAMMING IN SWIFT)

// selama aplikasi hidup kita membuat dan dan menghapus object
// yang artinya di video ini kita akan membuat object dan menghapus object apabila tidak dibutuhkan kembali.
//      Nama                      fungsi                          place
// membuat(Create) = initialize object petama kali (init) = mengalokasikan memory
// menghapus(Destroy) = menghapus object Deinitialize (deinit) = mengubah alokasi memory/remove from memory


// IOS INTERVIEW QUESTIONS
// swift punya yang namanya ARC
// ALOCATE REFERENCE COUNTING (ARC)
// live count atau perhitungan langsung objetc yang berada didalam memory.
// ketika kita membuat satu object maka live count menunjuukan bahwa ada satu object
// ketika kita membuat dua object maka live count menunjuukan bahwa ada dua object
// ketika kita menghapus satu object maka live menunjukkan pengurangan 1 objetc.

// Apabila terlalu banyak object yang ada dalam memory maka berimbas kepada perfora aplikasi yang membuat lamban/slower
// apabila masih awal awal atau begiiner maka gapapa kalo banyak object, tetapi apabila kita berada dilevel menegah atau professional kita harus memperhatikan setiap object yang hidup. as low as possible atau serendah mungkin.
// kita akan membuat object hanya saat dibutuhkan saja dan menghappus object apabila tidak dibutuhkan kembali

// for example kita punya dua layar yang ada layar pertama dan layar kedua, dimana ketika user tidak mengklik layar kedua maka tidak dibuatnya layar kedua, tetapi apabila user klik untuk move to second layer maka baru kita buatkan object dan mengalokasikan memory kelayar kedua. jika kita tidak butuh layar kedua maka kita de allocate screen one.

// MEMORY
// ada 2 tipe memory dalam hampir semua bahasa pemrograman dimana yaitu HEAP and STACK.
// hanya objeect yang di HEAP memory yang dapat dihitung oleh ARC. STACK memory tidak.

// setelah beginner level sudah di lewati maka lanjutkan dengan playlist selanjutnya. untuk membahas tentang ARC.

// Objects yang ada di stack memory.
// yang sekama ini dilakukkan di seri video sebelumnya menggunakan alokasi memory yang ada pada stack memory.
// yang ada pada Stack memory.
// basic types such as String,Boolean,Int, etc and basic data types.
// NEW : struct and enums dan arrays.


// Objects yang ada pada Heap Memory.
// functions atau fungsi
// NEW : Class and (Actors (swift concurrency)) merupakan pengguna dari heap memory.

// ketika kita menjalankan kode pada iphone (</>)
// Iphone is "multi threaded envirenment"
// dimana terdapat banyak thread atau engine yang berjalan serentak.
// setiap thread memiliki stack memory di tiap tiap bagiannya. misalkan ada 16 thread, berarti ada 16 stack yang terdapat pada setiap thread.
// dan dari semua thread yang ada hanya terdapat satu heap memory. dimana heap memory sharing kepada threads yang ada. misalkan ada 16 thread maka 16 thread itu saling sharing kepada satu heap memory.


// kesimpulannya.
// stack lebih cepat dari heap memory, stack memiliki jejak memory rendah (Dianjurkan), gaada issue di stack memory about object yang hidup.
// heap slower than stack memory, heap memiliki jejak memory tinggi, memiliki risiko tinggi dalam thread issues.



// karena stack memory lebih dianjukan maka memilih swift ui untuk membuat tampilan ui, akan menjadi lebih cepat karena swift ui hidup pada stack memory dan menggunakan struct dalam membuat tampplan ui nya. Karena hal ini yang menjadikan swift ui app lebih high performance karena menggunakan struct dan hidup di stack memory which is stack lebih banyak ketimbang heap memory.
// Bukan berarti kita menggunakan stack memory dengan swift ui sepanjang waktu dan tidak menggunakan kelas, tetapi akan ada beberapa kasus dimana kita harus menggunakan stack memory (struct) dan heap memory (class) pada kasus kasus tertentu. We can combine and let class and struct to wor together to ensure your app is working and high performance. Pembahasn lebih lanjut akan ada didalam swift concurrency atau pada level menengah atau lanjutan.



// VALUE VS REFERENCE TYPES

// Stack memory.
// semua OBJECT atau basic types yang ada pada code meliputi basic type int boolean string and struct and enum, yang pada stack memory disebut dengan value
// ketika you edit value di stack, artinya kamu membuat sebuah copy of it with new data
// example
// var a: Bool = false
// a = true ; copy of var a with new data call true
// so we have 2 data with old version and new version.

// misalkan pada thread kita membuat data dan memindahkannya kepada thread yang lainnya. yang dilakukan tadi sangatlah mudah karena just copy and paste with another stack. Jadi kita jangan khawatir object sebelumnya berada.


// Heap memory
// sedangkan semua OBJECT yang ada pada heap memory meluputi fungsi dan class setra actors dikenal heap memory sebagai reference
// ketika anda mengedit reference type, actually you edit object yang direferencekan.
// jadi gampangnya kita mengedit yang sudah ada yang berada di tempatnya. Dan mempassing pasiing data menggunakan reference yang disebut dengan "Pointer"
// when you edit a referece type, you edit that object that you referencing. this reference is called "Pointer" because it "points" and object in heap memory.



// MEMBUAT STRUCT DAN HEAP FOR THE FIRST TIME.
struct liveInStackMemory{
    let data:String = "hello, world"
}

class liveInHeapMemory{
    let data:String = "hello, world"
}

// methafor perbedaan CLASS and STRUCT.

/*
 Bayangkan anda sedang berada di sekolah yang memiliki banyak ruang kelas.
 setiap kelas, ada quizzes.
 sepanjang hari, guru akan handled banyak quiz kepada kelas berbeda, murid akan menjawab quizzes dan mengembalikan kepada guru.
 
 // "sekolah" = App / our app
 // kita memiliki sebuah aplikasi yang lot of things is happening.
 // "Ruang Kelas" = class.
 // kita memiliki kelas dan kita melakukan banyak hal didalam kelas, seperti melakukan sction didalam kelas. salah satu aksinya ialah user mengambil sebuah kuis.
 // "Quizzses" = struct.
 // kita memiliki kuis atau struct pada kelas dan membuat salinannya kepada kelas lain, misalkan kita membuat 20 quiz maka selanjutnya kit amembuat salinnanya kepada kelas kelas lain sebanyak 20 quiz
 
 // kesimpulannya.
 in this example, kita punya kelas dan melakukan actions didalam kelas tsb
 in the code , kita membuat sebuah class dimana kita akan membuatnya sebanyak 1 kali dan melakukan segala action didalam kelas tersebut.
 
 // in this example, kita punya quiz dimana terdapat perbedaan pada quiz tsb, guru memberikan quiz kepada murid, dan murid memberikan kembali kepada sang guru.
 in the code, Kita membua banyak struct dan kita dengan mudah mempassing passing data dan membuat salinannya kepada kelas kelas lain
 
 
 Note:
 Yang saya tangkap adalah bahwa struct lah yang akan dipassing passing melaui kelas lain, sedangkan class hanya dibuat satu kali dan melakukan segala actions didalamnya.
 why its happened?
 cause struct berada pada stack memory dimana lebih menyesuaikan dnegan jumlah threads, tetapi class yang berada pada heap memory yang jumlahnya hanya satu pada banyak threads. stack menggunakan copy with new data, sedangkan stack pass by reference.
 
 // fikirkan
 fikirkan tentang kita membuat struct dan basic types like boolean, Int,Sring and passing kepada setiap Class Class yang ada. we
 */


// KITA INGIN MENGGUNAKAN KELAS UNTUK HAL - HAL SEPERTI.
// "Manager" , "DataFactory" , "DataService" , "Factor" , "ViewModel"
// ini akan mejadi hal yang ada dalam MVVM architecture
// objek - objek ini yang akan kita buat dan melakukan perform didalamnya.

// KITA INGIN MENGGUNAKAN STRUCT UNTUK HALL - HAL SEPERTI.
// "DataModel" (string and boolean Int ets)
// object yang akan kita buat dan pass disepanjang aplikasi kita.

