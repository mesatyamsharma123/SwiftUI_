//
//  Gallery.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct Gallery: View {
    @EnvironmentObject var path : NavigationPaths
    var body: some View {
        Text("Gallery View")
        Button("Home") {
            path.popUpTORoot()
        }
        .buttonStyle(.glass)
    }
}

#Preview {
    Gallery()
}
