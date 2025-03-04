import Foundation
import SwiftUI

protocol MVIViewState {}
protocol MVIIntent {}

protocol MVIBaseViewModel: ObservableObject {
    associatedtype Intent: MVIIntent
    associatedtype ViewState: MVIViewState
    var state: ViewState { get }
    func intentHandler(_ intent: Intent)
}

protocol MVIBaseView: View {
    associatedtype ViewModel: MVIBaseViewModel
    var viewModel: ViewModel { get }
}
