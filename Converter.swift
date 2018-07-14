//
//  Converter.swift
//  Conversion_Calculator
//
//  Created by Vito Bertolino on 7/14/18.
//  Copyright © 2018 Joseph Bertolino. All rights reserved.
//

import Foundation

struct Converter {
    
    var inputUnit: String
    var outputUnit: String
    
    var label: String {
        get {
            return inputUnit + " to " + outputUnit
        }
    }
    
}
