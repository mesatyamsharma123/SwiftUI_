//
//  Operation.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 05/09/26.
//

import SwiftUI

struct Operation: View {
    
    @State var oprend1: String = ""
    @State var oprend2: String = ""
    @State var opereator: String = ""
    @State var showResult: Bool = false
    @State var opereatorSymbol: [String] = ["+","-","*","/"]
    @StateObject var vm  = OpreationViewModel()
    var body: some View {
        
        
     
        ZStack {
            LinearGradient(colors: [.black,.black,.red.opacity(0.8),], startPoint: .top, endPoint: .bottom)
            
            VStack (spacing:50) {
                VStack{
                    HStack{
                        Text(verbatim: "\(oprend1) \(opereator) \(oprend2)")
                            .foregroundStyle(.white)
                         
                        if showResult{
                            Text(verbatim: "= \(String(describing: vm.result))")
                                .foregroundStyle(.white)
                              
                        }
                      
                    }
                    
                }
                
                VStack (spacing: 30){
                    
                    HStack (spacing: 80) {
                        ForEach(1..<4, id: \.self) { val in
                            //                Text("\($0)")
                            Button ("\(val)") {
                                if oprend1.isEmpty {
                                    oprend1 = "\(val)"
                                }
                                else{
                                    oprend2 = "\(val)"
                                }
                      
                            }
                            
                            .buttonStyle(.glass)
                        }
                    }
                    HStack (spacing: 80) {
                        ForEach(4..<7, id: \.self) { val in
                            //                Text("\($0)")
                            Button ("\(val)") {
                                if oprend1.isEmpty {
                                    oprend1 = "\(val)"
                                }
                                else{
                                    oprend2 = "\(val)"
                                }
                      
                            }
                            
                            .buttonStyle(.glass)
                        }
                    }
                    HStack (spacing: 80) {
                        ForEach(7..<10, id: \.self) { val in
                            //                Text("\($0)")
                            Button ("\(val)") {
                                if oprend1.isEmpty {
                                    oprend1 = "\(val)"
                                }
                                else{
                                    oprend2 = "\(val)"
                                }
                            }
                            
                            .buttonStyle(.glass)
                        }
                    }
                    
                    HStack (spacing:10) {
                        ForEach (opereatorSymbol,id: \.self) { val in
                            Button ("\(val)") {
                                
                             opereator = val
                            }
                            .padding(20)
                            .buttonStyle(.glass)
                        }
                    }
                    Button{
                        vm.operation(a: Int(oprend1) ?? 0, b: Int(oprend2) ?? 0, operators: opereator )
                        showResult = true
                        
                    }label: {
                        Text("Result")
                            .frame(width: 200 , height:40)
                            
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .buttonStyle(.glass)
                    
                }
            }
        }
        .ignoresSafeArea()
        
        
        
        
    }
}

#Preview {
    Operation()
}
