//
//  ContentView.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 03/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.system(size:20,weight: .heavy)
                      )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
