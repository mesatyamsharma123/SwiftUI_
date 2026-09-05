//
//  OpreationViewModel.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 05/09/26.
//

import Foundation
import Combine

protocol Operations {
    func operation(a:Int,b: Int,operators : String)
}

class OpreationViewModel : Operations , ObservableObject {
    
    @Published var result: Any = 0
    var opereatorSymbol: [String] = ["+","-","*","/"]
    func operation(a: Int, b: Int,operators: String) {
       
        if operators == "+" {
            result = a + b
        }
        else if operators == "-" {
            result = a - b
        }
        else if operators == "*" {
            result = a * b
        }
        else if operators == "/" {
            result = a / b
        }
    }
    
    
    
}
