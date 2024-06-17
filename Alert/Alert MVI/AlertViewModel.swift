import Foundation
import SwiftUI

class AlertViewModel: MVIBaseViewModel {
    @Published var state: AlertState
    
    init(state: AlertState) {
        self.state = state
    }
    
    func intentHandler(_ intent: AlertIntent) {
        switch intent {
        case .acceptButtonTapped:
            state.delegate?.acceptAction()
        case .cancelButtonTapped:
            state.delegate?.cancelAction()
        }
    }
}

extension AlertViewModel {
    func close() {
        withAnimation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0)) {
            state.isActive = false
        }
    }
}

