//
//  Screens.swift
//  FedEx demo testUITests
//
//  Created by Eugene Berezin on 6/8/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen {
    static let fedExApp = XCUIApplication(bundleIdentifier: "com.fedex.mobile.home")
    struct Buttons {
        let homeButton: XCUIElement
        
    }
    
    static let buttons = Buttons(homeButton: fedExApp.buttons["flight home icon"])
    
    static func tapOnHomeButton() {
        buttons.homeButton.tap()
        
    }
    
}

class HomeScreen: BaseScreen {
    struct Tabs {
        let all: XCUIElement
    }
    
    struct HomeScreenButtons {
        let menu: XCUIElement
    }
    
    static let tabs = Tabs(all: fedExApp.buttons["All"])
    static let homeScreenButtons = HomeScreenButtons(menu: fedExApp.navigationBars["FedEx.FXSShipmentList_View"]/*@START_MENU_TOKEN@*/.buttons["SHIPMENT_LIST_HAMBURGER_BUTTON"]/*[[".buttons[\"menu white hamburger\"]",".buttons[\"SHIPMENT_LIST_HAMBURGER_BUTTON\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/)
    
    static func tapMenuButton() {
        homeScreenButtons.menu.tap()
    }
    
}

class SupportScreen: BaseScreen {
    struct SupportScreenButtons {
        let contactUs: XCUIElement
    }
    
    static let supportScreenButtons = SupportScreenButtons(contactUs: fedExApp.tables/*@START_MENU_TOKEN@*/.otherElements["Contact Us"]/*[[".cells.otherElements[\"Contact Us\"]",".otherElements[\"Contact Us\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/)

    
}

class MenuScreen: BaseScreen {
    struct MenuButtons {
        let supportButton: XCUIElement
    }
    
    static let menuButtons = MenuButtons(supportButton: fedExApp.collectionViews.cells.otherElements.containing(.image, identifier:"info_purple").element)
    
    static func tapOnSupportButton() {
        menuButtons.supportButton.tap()
    }
    
}
