//
//  Model.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 06/09/26.
//

import Foundation

enum LoginEnu {
    case loading
    case success (data: String)
    case failure (data: String)
}


struct User {
var name: String
var phone : String
}
