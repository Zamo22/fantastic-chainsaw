import Foundation
import SwiftUI

public extension Paystack {

    /// Dummy function to demonstrate how we would have normal API function without UI
    func chargeCard() {
        // Do something...Return a response
    }

    /// SwiftUI View for Charge Card UI
    func chargeCardUIButton<Content: View>(onComplete: @escaping (PaymentResult) -> Void,
                                           @ViewBuilder content: @escaping () -> Content) -> some View {
        ChargeCardButton(onComplete: onComplete) { content() }
    }

    /// Start Charge Card flow for UIKit
    func presentChargeCardUI(on viewController: UIViewController,
                             onComplete: @escaping (PaymentResult) -> Void) {
        let visibilityContainer = ViewVisibilityContainer(onComplete: onComplete,
                                                                      parentViewController: viewController)
        let chargeCardViewController = UIHostingController(
            rootView: ChargeCardView().environmentObject(visibilityContainer))
        viewController.present(chargeCardViewController, animated: true)
    }

}
