//: Playground - noun: a place where people can play

import Cocoa
import Foundation


// Syntax for declaring Dictonary
let measurements = ["bedroom" : 150, "kithcen" : 120, "living" : 300, "bathroom" : 230]

let details = ["name" : "John Doe"]

let measurements1: [String : Int] = ["bedroom" : 150, "kithcen" : 120, "living" : 300, "bathroom" : 230]

// Declaring Empty Dictionary
var measurements2: [String : Int] = [:]
    
measurements2 = [
    "bedroom" : 150,
    "kithcen" : 120,
    "living" : 300,
    "bathroom" : 230]

var measurements3 = [1 : "A", 2 : "B" ]

// Retriving data from Dictionary
measurements2["bedroom"]

measurements3[1]

// Adding New Key Pair Value
measurements3[3] = "C"

measurements3

type(of : measurements3)

// Update Value

let checkvalue = measurements3.updateValue("pranto", forKey: 3)    // It return its previous value

measurements3.updateValue("Joarder", forKey: 4)   // Doesn't throw any error, it'll simply add this to the dictionary

measurements3

// Removing value from dictionary

measurements3

measurements3.removeValue(forKey: 1)
measurements3[2] = nil

measurements3

// Useful Dictionary methods

measurements3.keys
measurements3.values

// Conversion of dictionary to array
var measurekeys = Array(measurements3.keys)
var measurevalues = Array(measurements3.values)

// Print Dictionary using loop

for (key,value) in measurements3 {
    print("\(key) : \(value)")
}


