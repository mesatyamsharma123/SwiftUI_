//
//  ViewModel.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 04/09/26.
//

import Foundation
import Combine

class ViewModel : ObservableObject  {
    
// @Published var joke = ""
 @Published var isLoading = false
    
    func FetchData ( completion : @escaping (String) -> () ){
        isLoading = true
        //api call
        DispatchQueue.main.async{
//            self.joke = "Hello World"
            self.isLoading = false
            completion("closuer")
        }
    }
 
}
