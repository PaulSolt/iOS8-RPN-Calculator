//
//  Stack.swift
//  iOS8-RPN
//
//  Created by Paul Solt on 9/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation


// Access Modifiers
// - private
// - internal
// - public

public struct Stack<Element>: ExpressibleByArrayLiteral {
    
    var items: [Element]
    
    public init(_ array: [Element] = []) {
        self.items = array
    }
    
    public init(arrayLiteral elements: Element...) {
        self.items = elements
    }

    public mutating func push(_ value: Element) {
        items.append(value)
    }
    
    public mutating func pop() -> Element? {
        guard items.count != 0 else { return nil }
        return items.removeLast()
    }
    
    public func peek() -> Element? {
        return items.last
    }
    
}
