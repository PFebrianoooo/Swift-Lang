import Foundation
// Dictionary data collections unorderedlist bu safe, just call your keys.
// aturan-aturan pada Dictionary.
/*
 1. Tidak Memiliki index
 2. Key harus berbeda atau unique, isi boleh sama
 3. Dictionary safe access because optionals.
 
 */

var fruits: [String] = ["apples", "Banana", "Mango", "Watermelon", "apples" ]
//print(fruits)

// accessing pada array isnot optinals
// maka perlunya accessing array dengan cara yang safe, bisa dilihat di folder array dan sets.
let items = fruits[1]

var fruitsSets: Set<String> = ["apples", "Banana", "Mango", "Watermelon", "apples" ]
//print(fruitsSets)

// INISIALISASI DICTIONARY
var myFirstDictionary: [String:Bool] = [
    "apple" : true,
    "orange" : false,
    "mango" : true
]

// accessing a dictionary
// By keys.
let value = myFirstDictionary["apple"]


// Operasi pada Dictionary
// Adding items.
myFirstDictionary["Banana"] = false
myFirstDictionary["Watermelon"] = true
myFirstDictionary.count


// Removing Items
myFirstDictionary.removeValue(forKey: "Banana")
myFirstDictionary.removeValue(forKey: "Watermelon")
myFirstDictionary.count


// Dictionary with custom Datatypes
struct PostModel {
    let id: String
    let tittle: String
    let likeCount: Int
}

// drop all data in arrays
var myArraysPostModel: [PostModel] = [
    PostModel(id: "xwy123", tittle: "post 1", likeCount: 10),
    PostModel(id: "abc123", tittle: "post 2", likeCount: 20),
    PostModel(id: "def123", tittle: "post 3", likeCount: 30)
]

// accessing safe actions for arrays
if myArraysPostModel.indices.contains(1) {
    let items = myArraysPostModel[1]
    print(items)
}

// dnegan menggunakan Dictionary
var myDictionaryPostModel: [String: PostModel] = [
    "xwv123" : PostModel(id: "xwy123", tittle: "post 1", likeCount: 10),
    "abc123" : PostModel(id: "abc123", tittle: "post 2", likeCount: 20),
    "def123" : PostModel(id: "def123", tittle: "post 3", likeCount: 30)
]

// accessing safe actions
let item = myDictionaryPostModel["xwv123"]
print(item)


// evaluasi diri
//yang perlu menggunakaan safely accessing
//1. arrays
/*
 check value arrays
 if namaArray.indieces.contains[] {
    let items = namaarrays[]
    print(items)
 }
 
 safely remove
 if namaArrays.ideices.contains[] {
    namaarrays.remove(at: indexes)
 }
*/






