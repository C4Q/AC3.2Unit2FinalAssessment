//
//  Crayon.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by John Gabriel Breshears on 10/13/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import Foundation


class Person {
    
    let firstName: String
    let middleName: String
    let lastName: String
    
    convenience init?(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        if components.count != 3 {
            return nil
        }
        let parsedFirstName: String = components[0]
        let parsedMiddleName: String = components[1]
        let parsedLastName: String = components[2]
        self.init(firstName: parsedFirstName, middleName: parsedMiddleName, lastName: parsedLastName)
    }
    
    init(firstName: String, middleName: String, lastName: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
    
    func printFirstName() {
        print(self.firstName)
    }
    
}

typealias Eyes = String
typealias Legs = String

class Doll {
    let eyes: Eyes
    let legs: Legs
    
    init(eyes: Eyes, legs: Legs) {
        // self
        self.eyes = eyes
        self.legs = legs
    }
}

class Crayon {
    var name: String
    var red: Double
    var green: Double
    var blue: Double
    
    init(name: String, red: Double, green: Double, blue: Double) {
        ////
        self.name = name
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    convenience init?(fromDict:[String:Any]) {
        if let name = fromDict["name"] as? String,
            let rgb = fromDict["rgb"] as? String {
//            "(123, 456, 789)"
            
            let components = rgb.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").components(separatedBy: ",")
            if let parsedRed = Double(components[0]),
                let parsedGreen = Double(components[1]),
                let parsedBlue = Double.init(components[2]) {
                self.init(name: name, red: parsedRed / 255.0, green: parsedGreen / 255.0, blue: parsedBlue / 255.0)
            }
            else {
                return nil
            }
            
            // transformedComponents = ["123", "456", "789"]
        }
        else {
            return nil
        }
    }
    
//    convenience init?(fromDict:[String:Any]) {
//        if let name = fromDict["name"] as? String,
//            let hex = fromDict["hex"] as? String {
//            
//            var hexComponents = [String]()
//            
//            // index(after:) will have us skip the initial hash character
//            var start = hex.index(after: hex.startIndex)
//            
//            // go over the characters 3x (there are 6 total)
//            for _ in 0..<3 {
//                // pick off the first two by making this range
//                let range = start..<hex.index(start, offsetBy: 2)
//                
//                // then substring copies out that range
//                let hexComponent = hex.substring(with: range)
//                
//                // put the string in the array
//                hexComponents.append(hexComponent)
//                
//                // move our start point past the copied characters
//                start = hex.index(start, offsetBy: 2)
//            }
//            
//            if let r = Double("0x"+hexComponents[0]), let g = Double("0x"+hexComponents[1]), let b = Double("0x"+hexComponents[2]) {
//                self.init(name: name, red: r/255.0, green: g/255.0, blue: b/255.0)
//            }
//            else {
//                return nil
//            }
//        }
//        else {
//            return nil
//        }
//    }
}
