//
//  EnumsDemo.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 06/09/26.
//

import SwiftUI

struct EnumsDemo: View {
    @StateObject var vm = EnumViewModel()
    var body: some View {
        Button ("Click me "){
            vm.fetchData()
            vm.isLoading.toggle()
        }
        switch vm.state {
        case .loading:
            ProgressView()
        case .success(data: let data):
            Text(data)
        case .failure(data: let data):
            Text(data)
        }
       
        
       
    }
}

#Preview {
    EnumsDemo()
}
