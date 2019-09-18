//
//  DigitAccumulator.swift
//  iOS8-RPN
//
//  Created by Paul Solt on 9/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

public enum Digit: Equatable {
    case decimalPoint
    case number(Int)        // 0 - 9
}

public enum DigitAccumulatorError: Error {
    case extraDecimalPoint
    case invalidNumber // 0 - 9 (15! is an error)
}

public struct DigitAccumulator {
    // Implementation detail how we store the digits
    private var digits = [Digit]()
    
    public init() {
        
    }
    
    mutating public func add(_ digit: Digit) throws {
        
        switch digit {
        case .decimalPoint:
            if digits.contains(.decimalPoint) {
                throw DigitAccumulatorError.extraDecimalPoint
            }
        case .number(let value):
            if value > 9 || value < 0 {
                throw DigitAccumulatorError.invalidNumber
            }
        }
        
        digits.append(digit)
    }
    
    public var value: Double? {
        
        // [Digits] -> [String] -> String
        let numberString = digits.map { digit -> String in
            switch digit {
            case .decimalPoint:
                return "."
            case .number(let value):
                return String(value)
            }
        }.joined()
        
        return Double(numberString)
    }
    
    mutating public func clear() {
        digits.removeAll()
    }
    
}
