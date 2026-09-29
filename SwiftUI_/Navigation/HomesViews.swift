//
//  HomesViews.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct HomesViews: View {
    
    @State private var path = NavigationPath()
//    ["expertList"] 
    var body: some View {
        NavigationStack(path:$path) {
            
            VStack{
                Button {
                    
                    path.append("expertList")
                    print("Button tab")
                }
                label : {
                    Text("ExpertList")
                }
                .buttonStyle(.glass)
                
                //            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationDestination(for: String.self) { route in
                if route == "home" {
                    HomesViews()
                }
                if route == "expertList" {
                    ExpertList(path: $path)
                }
                if route == "expertDetail" {
                    ExpertDetailView(path:$path)
                }
                if route == "gallery" {
                    GalleryView(path: $path )
                }
            }
        }
     
    }
}

#Preview {
    HomesViews()
}
