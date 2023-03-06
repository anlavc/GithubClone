//
//  ErrorMessage.swift
//  GHFollwers
//
//  Created by Anıl AVCI on 25.02.2023.
//

import Foundation

enum GFError: String, Error {
case invalidUsername = "This username created an invalid request"
case unableToComplate = "Unable to complate your request"
case invalidResponse = "Invalid response from the server.."
case invalidData = "The data received from the server was invalid."
}
