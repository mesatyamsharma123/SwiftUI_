//
//  MainTabContainer.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct MainTabContainer: View {
    
    @State var selection: Int = 0
    var body: some View {
        

            
            
            TabView(selection: $selection) {
                
                HomesViews()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(0)
                
                
                ContactView(selection: $selection)
                    .tabItem {
                        Label("Contact",systemImage: "phone")
                    }
                    .tag(1)
                
                //            GalleryView(path: <#Binding<NavigationPath?>#>)
                //                    .tabItem {
                //                        Label("Gallery",systemImage: "photo")
                //                    }
                //                    .tag(2)
                
            }
        
    }
}

#Preview {
    MainTabContainer()
}
