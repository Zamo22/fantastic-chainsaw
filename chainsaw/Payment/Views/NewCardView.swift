import Foundation
import SwiftUI

struct NewCardView: View {
    @State
    var cardNumber: String = ""

    @State
    var cardHolder: String = ""

    @State
    var expiry: String = ""

    @State
    var cvv: String = ""

    @EnvironmentObject
    var chargeCardContainer: ViewVisibilityContainer

    var body: some View {
            VStack(spacing: 16) {
                Text("Card Information")
                    .font(.title3)
                    .bold()
                    .padding()

                TextField("Card Number", text: $cardNumber)
                    .textFieldStyle(.roundedBorder)

                TextField("Card Holder", text: $cardHolder)
                    .textFieldStyle(.roundedBorder)

                TextField("Expiry", text: $expiry)
                    .textFieldStyle(.roundedBorder)

                TextField("CVV", text: $cvv)
                    .textFieldStyle(.roundedBorder)

                Spacer()

                NavigationLink(destination: FinalPaymnentStepView()) {
                    Text("Continue")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 4)
                        .buttonStyle(.borderedProminent)
                }

                Button("Cancel Payment") {
                    chargeCardContainer.showChargeCardFlow = false
                    chargeCardContainer.onComplete(.cancelled)
                }
            }
            .padding(24)
    }

}
