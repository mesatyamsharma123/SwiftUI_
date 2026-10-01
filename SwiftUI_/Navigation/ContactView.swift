//
//  ContactView.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct ContactView: View {
    @Binding var selection : Int
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button ("Go to Home"){
                selection = 0
            }
        }
    }
}

//#Preview {
//    ContactView()
//}
