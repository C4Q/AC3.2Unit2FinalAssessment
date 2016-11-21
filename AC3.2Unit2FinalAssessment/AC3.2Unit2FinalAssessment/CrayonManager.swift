//
//  CrayonManager.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tyler Newton on 11/18/16.
//  Copyright © 2016 Tyler Newton. All rights reserved.
//

import Foundation

class CrayonManager {
    static let manager = CrayonManager()
    var allcrayons = [Crayon]()
    
    
    private init() {}
    
    func populateCrayons(CrayonData: [[String:Any]]){
        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                allcrayons.append(crayon)
            }
        }
    }
}
