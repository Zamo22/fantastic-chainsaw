import Foundation

public class PaystackBuilder {

    var apiKey: String?

    public func setKey(_ apiKey: String) -> Self {
        self.apiKey = apiKey
        return self
    }

    public func build() -> Paystack {
        // Removed api key error handling from here for simplicity

        let config = PaystackConfig(apiKey: apiKey ?? "")
        return Paystack(config: config)
    }
}

public extension PaystackBuilder {

    static var newInstance: PaystackBuilder {
        return PaystackBuilder()
    }

}

public enum PaystackError: Error, Equatable {
    case noAPIKey
    case technical
    case response(code: Int, message: String)
}
