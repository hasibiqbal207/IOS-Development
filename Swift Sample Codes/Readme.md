## Datatype

```
import Cocoa
import Darwin

var hello = "Hello, playground"

var world: String = "Pranto"

var msg = hello + " " + world

print("I'm \(world) \(hello)")

var fruits: [Any] = ["pears", "mango", 2]


// Data Types

 // Constant Variable

let a = 10

 // Other

var pi1: Int = 50

var pi2: Float = 50.25

var pi3: Double = 50.550

var pi4: String = "Data Types"

print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

print("Min Double \(Double.leastNormalMagnitude)")
print("Max Double \(Double.greatestFiniteMagnitude)")

print("Max float \(Float.greatestFiniteMagnitude)")

var pi5: Bool = true

var pi6: Character = "p"

 // Type Cast

var pi7: Int = 5

var pi8: Double = 3.5


var pi9 = Double(pi7) + pi8  // Type Casting of pi7

print("3 : \(Int(3.24))")
```

## Basic Operation

```
//: Playground - noun: a place where people can play
import Darwin
import Cocoa

print("5 + 4 = \(5 + 4)")
print("5 - 4 = \(5 - 4)")
print("5 * 4 = \(5 * 4)")
print("5.0 / 4.0 = \(5.0 / 4.0)")
print("5 % 4 = \(5 % 4)")

print("4 + 5 * 10 = \(4 + 5 * 10)")
print("(4 + 5) * 10 = \((4 + 5) * 10)")

var randNum: Int = 5
randNum += 1
print("\(randNum)")
randNum -= 1
print(randNum)


// Use of Different Aggregate Functions
// There is also sin, cos, tan, asin, acos, atan, sinh, cosh, tanh

print("abs(-5) :\(abs(-5))")
print("floor(5.5) : \(floor(5.5))")
print("ceil(5.5) : \(ceil(5.4))")
print("max(5,4) :\(max(5,4))")
print("min(5,4) :\(min(5,4))")
print("pow(5,2) :\(pow(5,2))")
print("sqrt(25) :\(sqrt(25))")
print("log(2.718) = \(log(2.718) )")
```

## Conditional

``` 
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
```


## Array

```
//: Playground - noun: a place where people can play

import Cocoa

var array1 = [Int]()
print("Empty : \(array1.isEmpty)")

// Array Insertion Techniques

array1.append(5)
array1 += [7,9]
print("Index 1 : \(array1[1])")

array1[0] = 4
print(array1)

array1.insert(10, at: 2)
print(array1)

array1.remove(at: 3)
print(array1)

array1[0...2] = [1,2,3]
print(array1)
print("Length : \(array1.count)")

// Can be used for initializing array with default values
var array2 = Array(repeating: 0, count: 5)
print(array2)

var array3 = array1 + array2
print(array3)
type(of: array3) //

array3[2...4]

// For Loop

for itm in array3{
    print(itm)
}

for (index, value) in array3.enumerated(){
    print("\(index) : \(value)")
}

var array4 = [1,2,3]
for itm in array4{
    print(itm)
}

for i in 1...5{
    print(i)
}

// Condition Apply
for i in 1...10 where i % 2 == 0{
    print("Even : \(i)")
}

// While Loop

var i: Int = 1
while i < 10{
    if i % 2 == 0{
        i += 1
        continue
    }
    if i == 7{
        break
    }
    print(i)
    i += 1
}

// Random Number generator 
let magicNum: UInt32 = arc4random_uniform(10)
var guess: UInt32 = 0
// print(magicNum)
repeat {
    print("Guess : \(guess)")
    guess += 1
} while (magicNum != guess)

print("Magic Number was \(magicNum)")
```


## String

```
//: Playground - noun: a place where people can play

import Cocoa

var randStr = "This is a random string"
var randStr2 = " and here is another"
var randStr3 = randStr + randStr2
print("Length : \(randStr3.characters.count)")

randStr3.startIndex
print("First : \(randStr3[randStr3.startIndex])")

let index5 = randStr3.index(randStr3.startIndex, offsetBy: 6)
print("5th : \(randStr3[index5])")

print("Empty : \(randStr.isEmpty)")

randStr2.insert("A", at: randStr2.startIndex)
print(randStr2)

randStr2.insert(contentsOf: "string ".characters, at:
    randStr2.index(randStr2.startIndex, offsetBy: 2))
print(randStr2)

let startIndex = randStr2.index(randStr2.startIndex, offsetBy: 2)
let endIndex = randStr2.index(randStr2.startIndex, offsetBy: 12)
let stringRange = startIndex ..< endIndex
//print(stringRange)
let subStr = String(randStr2[stringRange])   // Swift 4 Syntax
//print(subStr)

if let hereMatch = randStr2.range(of: "here"){
    randStr2.replaceSubrange(hereMatch, with: "there")
}
print(randStr2)
```
