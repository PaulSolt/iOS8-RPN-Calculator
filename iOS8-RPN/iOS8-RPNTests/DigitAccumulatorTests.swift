//
//  DigitAccumulatorTests.swift
//  iOS8-RPNTests
//
//  Created by Paul Solt on 9/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation
import XCTest
import iOS8_RPN

class DigitAccumulatorTests: XCTestCase {
    
    // Red, Green, Refactor
    
    func testDigitAccumulator() throws {
        
        var digitAccumulator = DigitAccumulator()
        
        // 57.03
        try digitAccumulator.add(.number(5))
        try digitAccumulator.add(.number(7))
        try digitAccumulator.add(.decimalPoint)
        try digitAccumulator.add(.number(0))
        try digitAccumulator.add(.number(3))
        
        // get number as Double
        
        
        XCTAssertThrowsError(try digitAccumulator.add(.decimalPoint)) { (error) in
            if let error = error as? DigitAccumulatorError {
                XCTAssertEqual(DigitAccumulatorError.extraDecimalPoint, error)
            } else {
                XCTFail()
            }
        }
    }
    
}
