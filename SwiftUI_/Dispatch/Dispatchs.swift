//
//  Dispatch.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 01/10/26.
//

import SwiftUI

struct Dispatchs: View {
    var body: some View {
        Button ("Tap me") {
            print("2")
            
            DispatchQueue.main.async{
                print("3")
            }
                   print("7")
            DispatchQueue.main.async {
                print("4")
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                print("5")
            })
                                          
        }
    }
}

#Preview {
    Dispatchs()
}
