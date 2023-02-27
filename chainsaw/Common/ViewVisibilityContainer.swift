import SwiftUI

class ViewVisibilityContainer: ObservableObject {
    @Published
    var showChargeCardFlow: Bool

    // This could be a generic result type if we want to reuse this for all views
    var onComplete: (PaymentResult) -> Void

    var parentViewController: UIViewController?

    init(showChargeCardFlow: Bool = false,
         onComplete: @escaping (PaymentResult) -> Void,
         parentViewController: UIViewController? = nil) {
        self.showChargeCardFlow = showChargeCardFlow
        self.onComplete = onComplete
        self.parentViewController = parentViewController
    }

    func completeAndDismiss(with result: PaymentResult) {
        onComplete(result)
        if let parentViewController = parentViewController {
            parentViewController.dismiss(animated: true)
        } else {
            showChargeCardFlow = false
        }
    }
}
