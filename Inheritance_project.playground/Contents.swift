import UIKit

//Create a base class called Dish to encapsulate dish-related data and functionalities.

class Dish {
    private let ingredients: String
    private let name:  String
    
    // Memberwise initializer
    init (ingredients: String, name: String ) {
        self.ingredients = ingredients
        self.name = name
    }
    
    // Method to print dish information
    
    func printInfo() {
        print (" here is ingredients \(ingredients) ")
        print (" here is name \(name) ")
    }

}

//Subclass the base class
final class AppetizerDish: Dish {
    //Override the base class method
    
    override func printInfo () {
        print ( "Appetizer")
        //call the printInfo superclass method.
        super.printInfo()
    }
 
}

final class MainDish: Dish{
    override func printInfo() {
        print("MainDish")
        super.printInfo()
    }
}
//Create a for-loop

for _ in 1...5{
    let randomNumber = Int.random(in: 0...1)
    var dish: Dish

    
    //Create a random dish
    if randomNumber == 0  {
         dish = AppetizerDish (ingredients: "Margherita, Flatbread ", name: "Margherita Flatbread" )
        
        
    }else {
        
         dish = MainDish (ingredients: "Spaghetti,Tomato sauce", name: "Super Spaghetti" )
    }
    
    //Downcast using an if let statement
    
    if let appetizerDish = dish as? AppetizerDish {
           // If dish is an AppetizerDish, print appetizer information
           appetizerDish.printInfo()
       } else if let mainDish = dish as? MainDish {
           // If dish is a MainDish, print main dish information
           mainDish.printInfo()
           
           if mainDish is MainDish {
               print (mainDish)
           }
       }
}



//another correctly solution
/*
 // Create a base class called Dish to encapsulate dish-related data and functionalities.
 class Dish {
     private let ingredients: String
     private let name: String
     
     // Computed properties to access private constants
     var dishIngredients: String {
         return ingredients
     }
     
     var dishName: String {
         return name
     }
     
     // Memberwise initializer
     init(ingredients: String, name: String) {
         self.ingredients = ingredients
         self.name = name
     }
     
     // Method to print dish information
     func printInfo() {
         print("Ingredients: \(dishIngredients)")
         print("Name: \(dishName)")
     }
 }

 // Subclass the base class
 final class AppetizerDish: Dish {
     // Override the base class method
     override func printInfo() {
         print("Appetizer")
         // Call the printInfo superclass method
         super.printInfo()
     }
 }

 final class MainDish: Dish {
     // Override the base class method
     override func printInfo() {
         print("Main Dish")
         // Call the printInfo superclass method
         super.printInfo()
     }
 }

 // Create a for-loop to simulate dish orders
 for _ in 1...5 {
     let randomNumber = Int.random(in: 0...1)
     var dish: Dish
     
     // Create a random dish
     if randomNumber == 0 {
         dish = AppetizerDish(ingredients: "Margherita, Flatbread", name: "Margherita Flatbread")
     } else {
         dish = MainDish(ingredients: "Spaghetti, Tomato sauce", name: "Super Spaghetti")
     }
     
     // Downcast using an if let statement
     if let appetizerDish = dish as? AppetizerDish {
         // If dish is an AppetizerDish, print appetizer information
         appetizerDish.printInfo()
     } else if let mainDish = dish as? MainDish {
         // If dish is a MainDish, print main dish information
         mainDish.printInfo()
     }
 }
*/






