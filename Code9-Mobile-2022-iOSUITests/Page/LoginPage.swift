//
//  LoginPage.swift
//  Code9-Mobile-2022-iOSUITests
//
//  Created by Isidora Drazic on 5/24/22.
//

import Foundation
import XCTest

class LoginPage: BasePage {
    
    // UserName input field
    private func getUserNameInputField() -> XCUIElement {
        return getApp().textFields["userNameTextFieldIdentifier"]
    }
    // Password input field
    private func getPasswordInputField() -> XCUIElement {
        return getApp().secureTextFields["passwordTextFieldIdentifier"]
    }
    // UserName error popup
    private func getWrongCredentialsAlert() -> XCUIElement {
        return getApp().alerts["Wrong Username"]
    }
    
    private func getLoginButton() -> XCUIElement {
        return getApp().buttons["loginButtonIdentifier"]

    }
    
        
    func setUserName(text: String){
        
        getUserNameInputField().tap()
        getUserNameInputField().typeText(text)
    }
    
    func setPassword(text : String){
        
        getPasswordInputField().tap()
        getPasswordInputField().typeText(text)
    }
    
    func clickOnLoginButton() {
        getLoginButton().tap()
    }
    
    func assertInvalidCredentials(){
        XCTAssert(getWrongCredentialsAlert().exists)
    }
    
}
