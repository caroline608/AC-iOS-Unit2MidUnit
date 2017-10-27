//
//  PoloniusMonologue.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation


//struct NextLine {
//    var line: String
//    init(line: String) {
//        self.line = line
//    }
//}

class PoloniusMonologueModel {
    
   
    func getNextLine() -> String {
        currentIndex += 1
        if currentIndex > textArr.count - 1 {
            currentIndex = 0
        }
        let returnLine = textArr[currentIndex]
        return returnLine 
    }
    
    private let textArr = ["My liege, and madam, to expostulate",
                 "What majesty should be, what duty is,",
                 "What day is day, night night, and time is time,",
                 "Were nothing but to waste night, day, and time;",
                 "Therefore, since brevity is the soul of wit,",
                 "And tediousness the limbs and outward flourishes,",
                 "I will be brief. Your noble son is mad."
                ]
    var currentIndex = 0
}
