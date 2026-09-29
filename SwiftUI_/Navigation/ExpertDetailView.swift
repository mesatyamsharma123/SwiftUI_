//
//  ExpertDetailView.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct ExpertDetailView: View {
    @Binding var path : NavigationPath
    var body: some View {
        
        VStack{
            Text("ExpertDetailView")
            Button("Gallery Page") {
                path.append("gallery")
            }
            .buttonStyle(.glass)
        }
    }
}

//#Preview {
//    @State var path = NavigationPath()
//    
//    ExpertDetailView(path: $path)
//}

