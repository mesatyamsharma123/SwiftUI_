//
//  Dispatch.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 25/09/26.
//

import SwiftUI

struct Dispatch: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        ZStack {
            LinearGradient(colors: [.red,.yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Button {
                print("1")
                print("2")
                DispatchQueue.main.async{
                    print("3")
                }
                print("4")
                
            }label: {
               Text(" Taap me")
                    
            }
            .buttonStyle(.glass)
        }
    }
}

#Preview {
    Dispatch()
}
