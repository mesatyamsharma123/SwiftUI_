//
//  ExpertList.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct ExpertList: View {
   @Binding var  path : NavigationPath
    var body: some View {

            VStack{
                
                Text("ExpertList")
                
                Button("Expert Detail "){
                    path.append("expertDetail")
                    
                }
                .buttonStyle(.glass)

            
        }
    }
}

#Preview {
//    ExpertList( )
}
