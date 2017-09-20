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

array1.insert(10, at: 3)
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