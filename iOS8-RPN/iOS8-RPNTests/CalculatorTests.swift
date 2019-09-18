//
//  CalculatorTests.swift
//  iOS8-RPNTests
//
//  Created by Paul Solt on 9/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import XCTest
import iOS8_RPN

class CalculatorTests: XCTestCase {
    
    func testCalculatorAdd() {
        var calculator = Calculator()
        
        calculator.push(number: 7)
        calculator.push(number: 3)
        calculator.push(operator: .add)
        
        XCTAssertEqual(10, calculator.topValue)
    }
    
    // TODO: Add tests for other operators
    
    func testClearResetsCalculatorToNil() {
        var calculator = Calculator()
        calculator.push(number: 7)
        calculator.push(number: 3)
        
        calculator.clear()
        
        XCTAssertNil(calculator.topValue)
    }
    
}
