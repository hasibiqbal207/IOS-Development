//: Playground - noun: a place where people can play

import Cocoa

var randStr = "This is a random string"
var randStr2 = " and here is another"
var randStr3 = randStr + randStr2
print("Length : \(randStr3.characters.count)")

print("First : \(randStr3[randStr3.startIndex])")

let index5 = randStr3.index(randStr3.startIndex, offsetBy: 5)
print("5th : \(randStr3[index5])")

print("Empty : \(randStr.isEmpty)")

randStr2.insert("A", at: randStr2.startIndex)
print(randStr2)

randStr2.insert(contentsOf: "string ".characters, at:
    randStr2.index(randStr2.startIndex, offsetBy: 2))
print(randStr2)

let startIndex = randStr2.index(randStr2.startIndex, offsetBy: 2)
let endIndex = randStr2.index(randStr2.startIndex, offsetBy: 9)
let stringRange = startIndex ..< endIndex
//print(stringRange)
let subStr = randStr2.substring(with: stringRange)
//print(subStr)

if let hereMatch = randStr2.range(of: "here"){
    randStr2.replaceSubrange(hereMatch, with: "there")
}
print(randStr2)