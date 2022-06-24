//
//  RetirementCalcuUITests.swift
//  RetirementCalcuUITests
//
//  Created by Rajkumar on 22/06/22.
//

import XCTest

class RetirementCalcuUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTContext.runActivity(named: "screenshot") { (activity) in
            let app = XCUIApplication()
            app.activate()
            app.textFields["Name"].tap()
            
            let rKey = app/*@START_MENU_TOKEN@*/.keys["r"]/*[[".keyboards.keys[\"r\"]",".keys[\"r\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            rKey.tap()
            
            let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            aKey.tap()
            
            let hKey = app.keys["j"]
            hKey.tap()
            
            let deptTextField = app.textFields["Dept"]
            deptTextField.tap()
            
            let cKey = app/*@START_MENU_TOKEN@*/.keys["c"]/*[[".keyboards.keys[\"c\"]",".keys[\"c\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            cKey.tap()
            
            let sKey = app/*@START_MENU_TOKEN@*/.keys["s"]/*[[".keyboards.keys[\"s\"]",".keys[\"s\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            sKey.tap()
            
            let eKey = app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            eKey.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Submit"]/*[[".buttons[\"Submit\"].staticTexts[\"Submit\"]",".staticTexts[\"Submit\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            //let resultTest = app.staticTexts["the name is raj cse"]
            let resultTest = app.staticTexts.element(matching: .any, identifier: "resultLabel")
            let result = "the name is raj cse"
            XCTAssertEqual(resultTest.label, result)
        }
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
