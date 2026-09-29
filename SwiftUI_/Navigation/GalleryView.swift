//
//  GalleryView.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import SwiftUI

struct GalleryView: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("Gallery")
        Button("Home") {
            path = NavigationPath()
         
        }
        .buttonStyle(.glass)
    }
}
//
//#Preview {
//    GalleryView()
//}
