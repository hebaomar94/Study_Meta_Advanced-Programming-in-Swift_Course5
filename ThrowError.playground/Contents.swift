import UIKit

//ThrowError //Trowable Func

enum Passwordnotinvaild: Error {
    case passwordTwoShort
}

func passwordHere(password: String) throws {
    if password.count <= 6 {
     throw   Passwordnotinvaild.passwordTwoShort
    }
}

