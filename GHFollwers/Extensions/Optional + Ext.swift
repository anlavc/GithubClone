//
//  Optional + Ext.swift
//  GHFollwers
//
//  Created by Anıl AVCI on 23.02.2023.
//


import Foundation
extension String {
    var isNilOrEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty != false
    }
}
extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\. [A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    var isValidPassword: Bool {
        let passwordFormat = "(?=.*[A-Z]) (?=.*[0-9]) (?=.*[a-z]).{8,}"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordFormat)
        return passwordPredicate.evaluate(with: self)
        
    }
}
