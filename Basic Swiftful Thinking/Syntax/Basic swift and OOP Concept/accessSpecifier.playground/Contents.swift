import Foundation

//Rule of thumb:
//kita mau membuat sesuatu seprivat mungkin
//yang membuat kode menjadi lebih mudah untuk dibaca dan di debug, this is a good coder

struct MovieModel {
    let tittle: String
    let genre: GenreMovie
    private(set) var isFavorite: Bool
    
    func updateMovieFavorite(isFavorite: Bool) -> MovieModel{
        return MovieModel(tittle: tittle, genre: genre, isFavorite: isFavorite)
    }
    
    mutating func updateMovieFavorite(isFavorite: Bool) {
        self.isFavorite = isFavorite
    }
}

enum GenreMovie{
    case comedy, horror, documenter
}

class MovieManager{

    // Public access implicity by default
    // can access read and update anywhere inside and outside the class
    public var movie1 = MovieModel(tittle: "MR Bean", genre: .comedy, isFavorite: true)
    
    // private
    // can access read and update only inside the class
    private var movie2 = MovieModel(tittle: "Insidious", genre: .horror, isFavorite: false)
    
    
    // private(set)
    // can access read outside or inside the class but cannot update outside the class, just inside class
    private(set) var movie3 = MovieModel(tittle: "Ice Cold Murder", genre: .documenter, isFavorite: true)
    
}

let manager = MovieManager()
manager.movie1 = manager.movie1.updateMovieFavorite(isFavorite: false)

// jangan sampe lupa !
//apabila pendeklarasian struct itu variable, kalo pendeklarasian class itu let
// dont forget that ist important and fundamental


// version 1
// can readn and update outside or inside the class
// too publilc
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateMovieFavorite(isFavorite: false) // setter


// version 2
// cannot access and update outside the class
// private
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateMovieFavorite(isFavorite: false)



// best practice
// version 2
// can read outside the class but cannot set in outside the class
// private(set)
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateMovieFavorite(isFavorite: false)
manager.movie3.updateMovieFavorite(isFavorite: false)




//Note : private and public is common use in swift but many others
/*
 // open
 // public
 // internal
 // fileprivate
 // private
 // private(set)
 
 */




// Mereview materi setelah belajar kemarinn

struct MereviewStruct {
    let name: String
    let location: String
    
    func updateLocationvalue(update: String) -> MereviewStruct {
        return MereviewStruct(name: name, location: update)
    }
}


class MereviewClass {

    var people1 = MereviewStruct(name: "bandi", location: "Bandung")
    var people2 = MereviewStruct(name: "Jamal", location: "jakarta")
    var people3 = MereviewStruct(name: "Fajar", location: "Bali")
}


let human = MereviewClass()
print(human.people1)
human.people1 = human.people1.updateLocationvalue(update: "Senggugu")
print(human.people1)

let Value1 = human.people2
print(Value1)
human.people2 = human.people2.updateLocationvalue(update: "Medan")
print(human.people2)

