import Foundation
import SwiftUI

protocol AlertViewDelegate {
    func cancelAction()
    func acceptAction()
}

struct AlertState: MVIViewState {
    var type: AlertType
    var delegate: AlertViewDelegate?
    @Binding var isActive: Bool

    enum AlertType {
        case cancelSwapRegistration
        case pauseAlert
        case resumeAlert
        case backAlert
        case discardChangesExitAlert
        
        var title: String {
            switch self {
            case .cancelSwapRegistration:
                return "¿Estás seguro de que querés salir?\n Aún no completaste el registro\n como vendedor."
            case .pauseAlert:
                return "¿Estás seguro de que pausar\n la venta de este ticket?"
            case .resumeAlert:
                return "¿Estás seguro de que reactivar\n la venta de este ticket?"
            case .backAlert:
                return "¿Estás seguro de que querés\n ir atrás sin guardar los cambios?"
            case .discardChangesExitAlert:
                return "¿Estás seguro de que querés salir?\n Los cambios no se guardarán."
            }
        }
        
        var cancelButtonTitle: String {
            return "Cancelar"
        }
        
        var acceptButtonTitle: String {
            return "Aceptar"
        }
    }
}
