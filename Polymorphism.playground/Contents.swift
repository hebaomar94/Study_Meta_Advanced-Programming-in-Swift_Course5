import UIKit

import Foundation



//parent calss supclass

class vegtable {
    let primaryColor = "Green"
    func sing () {
        print("hello we are vegtables ")
    }
}

class carrot: vegtable {
    
}
class spinach: vegtable {
    
}
class broccoli: vegtable {
    
}

// if we need to (override ) in class we cannot override a store property we must override (computed property)
/*
 class vegtable {
 //computed
 var primaryColor: String {
 "Green"
 }
 
 func sing () {
 print("hello we are vegtables ")
 

 }
 }
 
 
 class carrot: vegtable {
     override  var primaryColor: String {
 "orange "
 
 override func sing () {
 print ("\(primaryColor) is my color")
 super.sing()
 print ("i like my carrot")
 
 }
 }
 */
//access control there are (private- public- file private-internal-open)


//typCasting
//(is - as)

class Customer {
    
}
//child class
class peanutAllergycustomer: Customer {
    let avoidDishes = [
        "Dishes1",
        "Dishes2"
    ]
    
    func excuteEmergency() {
        print ("911")
    }
    
}

//now we typcasting

var customers:  [Customer] = []

for _ in 0..<5 {
    let randomNum = Int.random(in: 0...1)
    let customer: Customer
    if randomNum == 0 {
        customer = Customer()
    } else {
        customer = peanutAllergycustomer()
    }
    customers.append(customer)
}

for customer in customers {
    if customer is peanutAllergycustomer {
        print ("welcom . do note that food has some peanut")
    }else {
        print("welcom")
    }
    
    
    if let peanutALLergyCustomer = customer as? peanutAllergycustomer{
        print ("Dishes to avoid : ")
        print (peanutALLergyCustomer.avoidDishes)
        print ("in case of emergency : ")
        print (peanutALLergyCustomer.excuteEmergency())
    }
}

//pollymorphism : child inherit from parent and change what inherit from it

class Spaghetti  {
    
    var ingredients : Set <String> = [
    "Sauce",
    "Tomato"
    ]
    
    func fetchIngradiens () {
        print ("ingradiens is \(ingredients)")
    }
    
}

class SpaghettiWithMeat: Spaghetti {
    override init() {
        super.init()
        // Add "Meat" to the ingredients set
        ingredients.insert("Meat")
    }
    
    override func fetchIngradiens ()  {
        super.fetchIngradiens()

        print ("we have new element ")
        
    }
    
    
}

let justSpaghetti = Spaghetti()
justSpaghetti.fetchIngradiens ()

let withMeatSpaghetti = SpaghettiWithMeat()

withMeatSpaghetti.fetchIngradiens()

