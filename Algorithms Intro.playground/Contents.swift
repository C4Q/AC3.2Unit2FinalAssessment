//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func addEvenArray(arr: [Int]) -> Int {
    var sum = 0
    for num in arr {
        if num % 2 == 0 {
            sum += num
        }
        
    }
    return sum
}

let testArray = [2,5,7,10]

addEvenArray(arr: testArray)


func summAllEven(arr: [Int]) -> Int {
    return arr.filter {$0 % 2 == 0}.reduce(0,+)
    
}

summAllEven(arr: testArray)

//func countVowels(vow: String) -> Int {
//    let vowels = ["a","e","i","o","u","y"]
//    var counter = 0
//    
//    
////    for i in Character(vow) {
////        for i in vowels{
////            if i == vowels {
////                counter += 1
////            }
////        }
////        
////    }
////    return counter
////    
////}
//}

func vowelCount(string: String) -> Int {
   var counter = 0
   
    for c in string.characters {
        switch c {
            case "a", "e", "i","o","u","y": counter += 1
        default: break
        }
    }
    return counter
}

vowelCount(string: "Hello how are")



func multiplyArray(arr: [Int]) -> Int {
    var product = 1
    
    for i in arr {
        if i != 0 {
            product *= i
        }
    }
    return product  // arr.filter { $0 != 0}.reduce(1,*)
}

func multiplyArrayInt(arr1: [Int], arr2: [Int]) -> [Int] {
    var newArray = [Int]
    
    for i in 0..<
    
    
    return newArray
}


