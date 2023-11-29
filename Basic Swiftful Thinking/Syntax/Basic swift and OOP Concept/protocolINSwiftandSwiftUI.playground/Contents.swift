import Foundation


// protokol
// Ketika protokol menyatakan let name: String, maka struct yang menginheritnya harus memiliki let name: String
// kalo menginherit protokol maka harus menyertakan apa yang ada didalam protokol

struct EmployeeModel: EmployeeHasUsername {
    let tittle: String
    let name: String
}

protocol EmployeeHasUsername {
    var name: String { get }
}
