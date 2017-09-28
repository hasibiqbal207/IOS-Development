//: Playground - noun: a place where people can play

import Cocoa
import Darwin


var age: Int = 8

if age < 5 {
    print("Go to Pre-school")
}
else if age > 5 {
    print("Go to High-school")
}
else if (age > 5) && (age <= 18){
    print("Growing Student")
}
else{
    print("Go to College")
}

var income: Double = 1200
var gpa: Double = 3.9

print("Get Grant : \((income < 1500) || (gpa >= 3.8))")

print("Not True : \(!true)")


 // Ternary Operator

var bage: Int = 18
var canDrive: Bool = bage >= 16 ? true : false

 // Switch Case

let ingredient = "pizza"

switch ingredient {
    case "tomato", "pizza":
        print("Not Today")
        fallthrough // Works Like Break
    
    case "pizza":
        print("Sause Please")
        break
    
default:
    print("Water")
}


let testScore: Int = 93

switch testScore {
case 93...100:
    print("You Got A")
default:
    print("You Got A-")
}


