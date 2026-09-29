//
//  Home.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var router: NavigationPaths
    var body: some View {
        NavigationStack(path: $router.path){
            
            VStack{
                Text ("HomeView")
                    
                
                Button("ExpertList") {
                    router.push(.expertList)
                    
                }
                .buttonStyle(.glass)
            }
            
            .navigationDestination(for: AppRoutes.self) { routes in
                switch routes {
                case .expertList: Lists()
                case .expertDetail: Detail()
                case .gallery: Gallery()
                case .home: Home()
                }
            }
        }
    }
}
#Preview {
     Home()
         .environmentObject(NavigationPaths.shared)
 }
   
