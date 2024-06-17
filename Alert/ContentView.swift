//
//  ContentView.swift
//  Alert
//
//  Created by Elio Fernandez on 17/06/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: AlertViewModel
    @State private var showAlert: Bool = false
    @State private var selectedItem: String?
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Mostrar Alert") {
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(viewModel.state.type.title),
                  primaryButton: .destructive(Text(viewModel.state.type.cancelButtonTitle)),
                  secondaryButton: .default(Text(viewModel.state.type.acceptButtonTitle), action: {
                viewModel.intentHandler(.acceptButtonTapped)
            }))
        })
    }
}

#Preview {
    ContentView(viewModel: AlertViewModel(state: .init(type: .cancelSwapRegistration, isActive: .constant(true))))
}

