//
//  EnumViewModel.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 06/09/26.
//

import Foundation
import Combine
class EnumViewModel : ObservableObject{
    @Published var state : LoginEnu = .loading
    @Published var  isLoading : Bool  = true
    
    
    func fetchData(){
//        api call
        
        print("fetching data")
        if isLoading  {
            state = .success(data:"success")
            
        }
        else {
            state = .failure(data: "failure")
        }
    }
    
}
