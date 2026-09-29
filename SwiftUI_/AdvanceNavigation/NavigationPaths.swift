//
//  NavigationPaths.swift
//  SwiftUI_
//
//  Created by Satyam Sharma Chingari on 29/09/26.
//

import Foundation
import Combine
import SwiftUI

class NavigationPaths : ObservableObject {
    static var shared = NavigationPaths()
    @Published var path = NavigationPath()
    
    private init () { }

    func push(_ route: AppRoutes) {
        path.append(route)
    }
    func popUp (){
        path.removeLast()
    }
    func popUpTORoot() {
        path = NavigationPath()
    }
}
