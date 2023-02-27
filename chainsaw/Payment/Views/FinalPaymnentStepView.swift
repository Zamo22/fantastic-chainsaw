import SwiftUI

enum FinalPaymentStepState {
    case otp
    case finished
}

struct FinalPaymnentStepView: View {
    @State
    var otp = ""

    @State
    var paymentState: FinalPaymentStepState = .otp

    @EnvironmentObject
    var chargeCardContainer: ViewVisibilityContainer

    var body: some View {
        switch paymentState {
        case .otp:
            otpView
        case .finished:
            paymentCompleteState
        }
    }

    var otpView: some View {
        VStack(spacing: 40) {
            Text("Validate your payment")

            TextField("Enter OTP", text: $otp)
                .textFieldStyle(.roundedBorder)
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .frame(maxWidth: 200, minHeight: 40)

            Button(action: verifyPayment) {
                Text("Submit")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
            }
            .buttonStyle(.borderedProminent)

        }
    }

    var paymentCompleteState: some View {
        VStack(spacing: 40) {
            Text("Payment completed successfully!")
                .font(.title)
                .foregroundColor(.green)

            Button(action: returnToInitiatedView) {
                Text("Done")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
            }
            .buttonStyle(.borderedProminent)
        }
    }

    func verifyPayment() {
        paymentState = .finished
    }

    func returnToInitiatedView() {
        chargeCardContainer.completeAndDismiss(with: .success)
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        FinalPaymnentStepView()
    }
}
