//
//  LoginTest.swift
//  Code9-Mobile-2022-iOSUITests
//
//  Created by Isidora Drazic on 5/24/22.
//

import Foundation

class LoginTest : BaseTest {
    
    let loginPage = LoginPage()
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    func testEnterUserName() {
        loginPage.setUserName(text: "Isidora")
    }
    
    func testEnterPassword() {
        loginPage.setPassword(text: "x")
    }
    
    func testInvalidCredentials() {
        loginPage.setUserName(text: "1")
        loginPage.setPassword(text: "2")
        loginPage.clickOnLoginButton()
        loginPage.assertInvalidCredentials()        
    }
}
