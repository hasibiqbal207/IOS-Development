//: Playground - noun: a place where people can play

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


