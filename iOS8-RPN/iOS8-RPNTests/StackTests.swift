//
//  StackTests.swift
//  iOS8-RPNTests
//
//  Created by Paul Solt on 9/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation
import XCTest
//@testable import iOS8_RPN
import iOS8_RPN

// For Frameworks don't use @testable, we can test public / internal / private better
// as an API consumer

class StackTests: XCTestCase {
    
    func testStack() {
        
        // FILO: First In, Last Out data structure
//        var stack = Stack<Int>([4, 5, 6])
        
        
        var stack: Stack<Int> = [1, 2, 3]  // ExpressibleByArrayLiteral
        
        // push = add item
        stack.push(5)

        // pop = pop item and return it
        XCTAssertEqual(5, stack.pop())
        
        // peek = look at last item
        XCTAssertEqual(3, stack.peek())
        
        XCTAssertEqual(3, stack.pop())
        XCTAssertEqual(2, stack.pop())
        XCTAssertEqual(1, stack.pop())
        XCTAssertEqual(nil, stack.pop())
        
        XCTAssertEqual(nil, stack.peek())
    }
    
    
}
