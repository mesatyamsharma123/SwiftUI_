//
//  List.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct Lists: View {
    @EnvironmentObject var path : NavigationPaths
    var body: some View {
        Text("Epxert List")
        Button("Expert Detail page ") {
            path.push(.expertDetail)
            print("ds")
        }
        .buttonStyle(.glass)
    }
}

#Preview {
    Lists()
        .environmentObject(NavigationPaths.shared)
    
    

    
}
