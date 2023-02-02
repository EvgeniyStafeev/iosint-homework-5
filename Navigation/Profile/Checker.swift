//
//  Checker.swift
//  Navigation
//
//  Created by Евгений Стафеев on 27.01.2023.
//

import UIKit


final class Checker {

    private let login = "1111"
    private let password = "2222"


    static let shared = Checker()

    private init() {}
    
}

extension Checker: LoginViewControllerDelegate {
    func check(login: String, password: String) -> Bool {
        self.login == login && password == password
    }
}
