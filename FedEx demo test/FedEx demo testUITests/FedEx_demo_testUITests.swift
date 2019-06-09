//
//  FedEx_demo_testUITests.swift
//  FedEx demo testUITests
//
//  Created by Eugene Berezin on 6/8/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import XCTest

class FedEx_demo_testUITests: XCTestCase {
    
    let fedExApp = XCUIApplication(bundleIdentifier: "com.fedex.mobile.home")

    override func setUp() {
        
        continueAfterFailure = false
        fedExApp.launch()
        
    }

    override func tearDown() {
        super.tearDown()
        fedExApp.terminate()

    }

    func testFedEx() {
       HomeScreen.tapMenuButton()
       MenuScreen.tapOnSupportButton()

        guard SupportScreen.supportScreenButtons.contactUs.waitForExistence(timeout: 5) else {
            XCTFail("Contact us menu option is not visible")
            return
        }
        
        XCTAssert(SupportScreen.supportScreenButtons.contactUs.exists, "User is not on the support screen")
        BaseScreen.tapOnHomeButton()
        XCTAssert(HomeScreen.tabs.all.exists, "User is not on the home screen")
        
    }
    

}
