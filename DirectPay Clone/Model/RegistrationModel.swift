//
//  RegistrationModel.swift
//  DirectPay Clone
//
//  Created by BS1101 on 25/5/23.
//

import Foundation
var users: [String:String] = [:]

class userInformation{
    var field: String
    var userInput: String
    init(field: String, userInput: String) {
        self.field = field
        self.userInput = userInput
    }
}
