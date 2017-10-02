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


## Function

```
import Cocoa
import Foundation

func showMessage(pageName: String)
{
    print("Welcome to Florists, you are now on our \(pageName) page")
}

showMessage(pageName: "Intro")

showMessage(pageName: "Home")

showMessage(pageName: "About Us")


// Passing array of string as a parameter of function

func playSong(lines: [String])
{
    let choruses = ["I love you", "I miss you", "I'll always be there for you"]
    
    for line in lines
    {
        print("\n\n" + line)
        
        for chorus in choruses {
            print(chorus)
        }
    }
}

var family = ["Mum", "Dad", "Wife", "Kids"]
playSong(lines: family)


// Multiple parameter

func addTwoNumbers(first: Int,second: Int)
{
    print("The sum of the two numbers is \(first+second)")
}

addTwoNumbers(first: 5, second: 10)


// Returning Values From Function

func addThreeNumbers(first: Int,second: Int,third: Int) -> Int
{
    return first+second+third
}

let sum1 = addThreeNumbers(first: 5, second: 10, third: 3)


// Calling a Function from another function

func splitNumber(number: Int) -> Int
{
    var singleNumber = 0
    var array: [Int] = []
    var newNumber = number
    
    while newNumber > 10 {
        singleNumber = newNumber % 10
        array.append(singleNumber)
        newNumber /= 10
    }
    array.append(newNumber)
    
    let reversed = reverse(numberArray: array)
    let sum = add(reversed: reversed)
    
    return sum
}

func reverse(numberArray: [Int]) -> [Int]
{
    return numberArray.reversed()
}

func add(reversed: [Int]) -> Int
{
    var sum = 0
    for i in 0..<reversed.count
    {
        sum += reversed[i]
    }
    return sum
}

splitNumber(number: 123456)
```


## Dictionary

```
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
```



## Optional

```
import Cocoa
import Foundation


// Returning nil from a func
func getIndex(name: String, array: [String]) -> Int?
{
    for i in 0..<array.count
    {
        if array[i] == name
        {
            return i
        }
    }
    return nil
}


var names = ["dee", "ray", "tony", "richard"]
let index: Int?         // Optioanl Int Declaration
index = getIndex(name: "tony", array: names)


/*
let value = index + 2
This would give error as index is wrapped with optional
to use it , we have to unwrap index
*/

// Unwrapping Int Variable

if let value = index
{
    print(value + 2)
}
else
{
    print("value is nil")
}

// Unwrapping String optional

var politicalParty: String?
politicalParty = "Independent"


if politicalParty != nil {
    let party = politicalParty!
    print("Party : \(party)")
}

if let party = politicalParty {
    print("Party : \(party)")
} else {
    print("No Party")
}

let party = politicalParty ?? "No Party"
print(party)

// Force unwrapping optional type

if index == nil
{
    print("index is nil so we can't use this value")
}
else
{
    print(index! + 2)
}


// Force unwrap of String optional

func returnMood(score: Int) -> String?
{
    switch score {
    case 0...3:
        return "Sad"
    case 4...6:
        return "OK"
    case 7...8:
        return "Great"
    case 9...10:
        return "Brilliant"
    default:
        return nil
    }
}

let mood: String?
mood = returnMood(score: 7)

if mood != nil
{
    "Todays mood is " + mood!
}

// Implicit Unwrapped conditionals with !

var value: Int!
var dict = ["heartrate" : 73]

value = dict.updateValue(65, forKey: "heartrate")   // But It'll crash if nil is returned. That is why use of implicit unwraping of conditional is risky


// Nil COALESCING OPERATOR

var names1 = ["dee", "ray", "tony"]
let index1: Int?

index1 = getIndex(name: "ray", array: names1) ?? -999


// Unwrap multiple optional values in one single line of code separated by comma

let day: String? = "monday"
let mood_now :String? = "Happy"
let activity :String? = "Running"

if let dayvalue = day, let moodvalue = mood_now, let activityvalue = activity
{
    print("Values are \(dayvalue) \(moodvalue)   \(activityvalue)")
}

// Optional Chaining

/*
 From Apple Doc
 Optional chaining is a process for querying and calling properties, methods and subscripts on an optional that might currently be nil. 
 If the optional contains a value, the property, method or subscript call succeds.
 If the optional is nil, the property, method or subscript call returns nil.
 Multiple queries can be chained together and the entire chain fails gracefully if any link in the chain is nil
*/

func getDict() -> [String:[String]]?
{
    return ["friends" : ["ray","tony"], "foes" : ["james","bob","dilan"] ]
}

// The above function will return a dictionary so lets use the return value

let dictvalue = getDict()

// Let us extract the array of friends

let friends = dictvalue!["friends"]

// Now let's count the number of friends

friends!.count

// But what if getDict returns nil or array of friends is nil
// We need to perform multiple checks. Multiple checks include

if let dictionaryvalue = dictvalue
{
    let friends = dictionaryvalue["friends"]
}

// Optional chaining allows us to use a question mark before calling on the method e.g array?.count . The question mark between the array and count says "everything after the question mark will only run if the code before the question mark has a value

// We can elegantly perform all these checks with one line of code

let count = getDict()?["friends"]?.count

/* Three Types of Variable Type
1. Global Variable
2. Local Variable
3. Optionally bound Variable
*/
```


## Tuple

```
import Cocoa

let height: Double = 6.25
let weight: Int = 175

let myData = (height, weight)
print("Height : \(myData.0)")

let myData2 = (height: 6.25, weight: 175)
print("Weight: \(myData2.weight)")
```

