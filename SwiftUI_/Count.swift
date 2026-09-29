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
    
   @State private var show : Bool = false


    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .yellow], startPoint: .bottom, endPoint: .leading)
            
//            Text("Satyam Sharma")
//                .font(.title)
//                .foregroundStyle(.white)
//                .redacted(reason: .placeholder)
//            VStack(spacing: 12) {
//                Text("Count is : \(count)")
//                Button("Increment") {
//                    count += 1
//                    countLogic?()
//                }
//                .buttonStyle(.glass)
//                
//                
//            }
            
            if show {
                VStack{
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                }
                .padding(20)
                .frame(width: 300, height: 300)
                .background(.black)
            }
            else{
                VStack{
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack{
                        Text("Hello")
                        Spacer()
                        Text("Satyam Sharma")
                    }
                    .foregroundStyle(.white)
                    
                }
                .padding(20)
                .frame(width: 300, height: 300)
                .background(.black)
                .redacted(reason: .placeholder)
            }
            
            
            
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                count = 10
                show = true
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
