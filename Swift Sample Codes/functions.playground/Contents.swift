//: Playground - noun: a place where people can play

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