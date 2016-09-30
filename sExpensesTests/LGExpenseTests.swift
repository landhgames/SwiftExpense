//
//  LGExpenseTests.swift
//  sExpenses
//
//  Created by Nacho on 6/20/16.
//  Copyright © 2016 LandhSoft™. All rights reserved.
//

import XCTest

@testable import sExpenses

class LGExpenseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func LGExpenseInit() {
        let expense = LGExpense(title:"ABCD!@#$1234", cat : "category", price : 99.999, curr:LGExpense.Currency.ars)
        
        XCTAssert(expense.title == "ABCD!@#$1234")
        XCTAssert(expense.category == "category")
        XCTAssert(expense.price == 99.999)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }


}
