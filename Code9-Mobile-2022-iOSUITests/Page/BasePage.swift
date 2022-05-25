//
//  BasePage.swift
//  Code9-Mobile-2022-iOSUITests
//
//  Created by Isidora Drazic on 5/24/22.
//

import XCTest

class BasePage {
    
    private let app = XCUIApplication()
    
    func getApp() -> XCUIApplication{
        return app
    }
    
    func scrollDown() {
        print("Im scrolling down")
    }
}
