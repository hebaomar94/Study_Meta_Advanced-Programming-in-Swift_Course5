import UIKit

//loop itself


func printNumbers(n: Int) {
    if n == 0 {
        print("done")
    } else {
        print(n)
        printNumbers(n: n - 1)  // Recursively call the function with n+1
    }
}
printNumbers(n: 6)
