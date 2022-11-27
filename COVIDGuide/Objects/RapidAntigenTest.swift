//
//  RapidAntigenTest.swift
//  COVIDGuide
//
//  Created by William Chen on 2022/11/28.
//

import UIKit


enum TestType {
    case nasal
    case oral
}

class RapidAntigenTest: NSObject {
    
    var name: String
    var type: TestType
    var steps: [Step]
    
    init(name: String, type: TestType, steps: [Step]) {
        self.name = name
        self.type = type
        self.steps = steps
    }
    

}
