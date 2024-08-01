import UIKit
enum CalculatorError: Error {
    case divisionByZero
}

class Calculator {
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
 
}
// Step 3: Initialize the Calculator class to a constant

let calculator = Calculator()
// Step 4: Call the function to divide two numbers

let successfulResult = try calculator.divide(x: 10, y: 0)
print (successfulResult)
//5:Create a custom enumeration for errors



do {
    // Step 7: Call the function to divide two numbers inside the do block

    let successfulResult = try calculator.divide(x: 10, y:0 )
    print("Division result: \(successfulResult)")

}
catch CalculatorError.divisionByZero {
    print ("Division by zero detected and not allowed")
}
