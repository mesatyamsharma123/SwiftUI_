//
//  Detail.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct Detail: View {
    @EnvironmentObject var router: NavigationPaths
    var body: some View {
        Text("Detail Page")
        Button("Galley page"){
            router.push(.gallery)
        }
        .buttonStyle(.glass)
        
    }
}

#Preview {
    Detail()
}
