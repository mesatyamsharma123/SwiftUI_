//
//  ENUMS.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 06/09/26.
//

import Foundation

enum SignError: LocalizedError {
    
    case invalidSignature
    case invalidData
    case invalidKey
    
   var errorDescription: String? {
     switch self {
         case.invalidKey: return " invalid keys"
     case .invalidSignature:
         return "invalid signature"
     case .invalidData:
     return "invalid data"
     }
      
    }
    
}
