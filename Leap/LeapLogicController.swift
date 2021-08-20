//
//  LeapLogicController.swift
//  Leap
//
//  Created by Matthew Dias on 8/19/21.
//

import Foundation

struct LeapLogicController {
    func getCalculation(text: String) -> String {
        guard let year = Int(text) else {
            return "Not a number!"
        }

        guard isLeap(year: year) else {
            return "\(year) is NOT a leap year!"
        }

        return "\(year) is a leap year!"
    }

    func isLeap(year: Int) -> Bool {
        return year.isMultiple(of: 4) &&
            (!year.isMultiple(of: 100) || year.isMultiple(of: 400))
    }
}
