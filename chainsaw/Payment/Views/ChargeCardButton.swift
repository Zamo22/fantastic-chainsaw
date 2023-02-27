import SwiftUI

struct ChargeCardButton<Content: View>: View {
    @StateObject
    var chargeCardContainer: ViewVisibilityContainer

    @ViewBuilder
    var content: Content

    init(onComplete: @escaping (PaymentResult) -> Void,
         @ViewBuilder content: () -> Content) {
        self._chargeCardContainer = StateObject(wrappedValue: ViewVisibilityContainer(onComplete: onComplete))
        self.content = content()
    }

    var body: some View {
        Button(action: startFlow) {
            content
        }
        .sheet(isPresented: $chargeCardContainer.showChargeCardFlow) {
            ChargeCardView()
        }
        // Don't put object in from here to support UIKIt
        .environmentObject(chargeCardContainer)
    }

    func startFlow() {
        chargeCardContainer.showChargeCardFlow = true
    }
}
