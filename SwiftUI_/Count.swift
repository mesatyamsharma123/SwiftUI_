//
//  Count.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 03/09/26.
//

import SwiftUI

struct Count: View {
    @State private var count: Int = 0
    /// Optional external logic to run when count changes
    var countLogic: (() -> Void)? = nil


    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .black], startPoint: .bottom, endPoint: .leading)
            
            
            VStack(spacing: 12) {
                Text("Count is : \(count)")
                Button("Increment") {
                    count += 1
                    countLogic?()
                }
                .buttonStyle(.glass)
                
            }
        }
        
 
    }
}

#Preview {
    Count() {
        // Additional side effects when incrementing, if desired
        print("Increment tapped")
    }
}
