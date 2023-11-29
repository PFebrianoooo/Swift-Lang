import Foundation
// fiter sort and map in swift.
// Berkaitan dengan materi looping dimana pada looping kita bisa melakukan operasi filter sort and map in swift
// ketika materi ini berkaitan dengan arrays dan structpada contoh
// .filter(), .sort() dan .map() merupakan fungsi dengan pengembalian so all of commands need return

struct userDatabase {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [userDatabase] = [
    userDatabase(name: "Putra", isPremium: true, order: 1),
    userDatabase(name: "Fajri", isPremium: false, order: 4),
    userDatabase(name: "Panji", isPremium: true, order: 2),
    userDatabase(name: "Kahfi", isPremium: true, order: 3),
    userDatabase(name: "Rama", isPremium: false, order: 10000)
]

// Filtering Starts

// filtering data manually
//for items in allUsers {
//    if items.isPremium {
//        allPremiumUsers.append(items)
//    }
//}


// displaying data on allPremiumUsers
//for x in allPremiumUsers {
//    print(x)
//}



// filtering data with func filter()
// operasi ini menggunakan boolean jadi kalo kita mau ambil nilai true maka returnkan true, dan return globalnya false
// filtering hanya berlaku untuk boolean ajah
//var allPremiumUsers: [userDatabase] = allUsers.filter { user in
//    if user.isPremium {
//        return true
//    }
//
//    return false
//}



// filtering data boolean isPremium another way
//var allPremiumUser: [userDatabase] = allUsers.filter { user in
//    return user.isPremium
//}

// shorthand
//var allPremiumUser: [userDatabase] = allUsers.filter({ $0.isPremium })


// Filtering Ends


// Sorting starts

// sorting bisa untuk nomor dan kata-kata

// user1 dan user2 menandakan untuk mengcompare items di looping, inget algoritma looping.
// user1 dibandingkan dengan user2 dan seterusnya
// tanda < / >
// < menandakan untuk ascending
// > menandakan untuk descending
// pada kondisional if user.name menandakan apa yang mau di sort,
// misalkan kita mau sort nama in this case maka .name
// misalkan kita mau sort order in this case maka .order

// cara biasa
//var orderedUsers: [userDatabase] = allUsers.sorted { user1, user2 in
//    return user1.name < user2.name
//}

// shorthand
// fungsi $(MoneySign)
// pengganti dari user1 dan user 2, misalkan
// $0 berarti cuma 1 variable yang digunakan untuk masuk ke array  contoh filtering (single)
// $0 dan $1 berarti 2 variable yang digunakan untuk masuk ke array (tuple)
// $0, $1 dan $2 maka  3 varuable yang di gunakan untuk masuk ke array, dan seterusnya (tuple)
// $0 $1 $2 menyatakan items di tuple dan disini

//var orderedUsers2: [userDatabase] = allUsers.sorted(by: { $0.order < $1.order })
//print(orderedUsers2)

// Sorting ends

//mapping starts
// Mapping
// adalah mengambil data yng dibutuhkan saja didalam array
// misalkan butuh nama(String) aja yang ditaro di array nama(String)

// cara biasa
//var nameArrays: [String] = allUsers.map { user in
//    return user.name
//}


// shorthand
//var nameArrays2: [String] = allUsers.map({ $0.name })
//print(nameArrays2)


// mapping ends


// Review Diri.
// gua mau mengambil sebuah nama di allusers dan sorting datanya.

var nameUsersInfo: [String] = allUsers.map({ $0.name })

var sortUserInfo: [String] = nameUsersInfo.sorted()

