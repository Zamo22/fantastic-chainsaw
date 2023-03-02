import Foundation
import SwiftUI

public extension Paystack {

    /// Dummy function to demonstrate how we would have normal API function without UI
    func chargeCard() {
        // Do something...Return a response
    }

    /// Creates a SwiftUI Button to intiate the chargeCard flow using Paystack's UI
    /// - Parameters:
    ///   - onComplete: Provide a closure for what should execute once the flow has completed, provides the ``PaymentResult`` of the transaction
    ///   - content: Provide styling for your Button
    /// - Returns: A SwiftUI `View` that should be placed in your view as an initiation point for the flow
    ///
    /// Example Usage:
    /// ```swift
    /// paystackObject.chargeCardUIButton(onComplete: viewModel.onPaymentComplete) {
    /// Text("Charge Card")
    ///    .padding()
    /// }
    ///
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
