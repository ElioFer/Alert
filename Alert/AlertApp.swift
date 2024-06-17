//
//  AlertApp.swift
//  Alert
//
//  Created by Elio Fernandez on 17/06/2024.
//

import SwiftUI

@main
struct AlertViewPopupApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: AlertViewModel(state: .init(type: .cancelSwapRegistration, isActive: .constant(true))))
        }
    }
}

