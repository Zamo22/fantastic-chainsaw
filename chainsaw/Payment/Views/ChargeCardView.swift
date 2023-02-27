import SwiftUI

struct ChargeCardView: View {

    var body: some View {
        NavigationView {
                List {
                    Section {
                        cardRow(name: "My Card", number: "XXXX XXXX XXXX 1234")
                        cardRow(name: "Another Card", number: "XXXX XXXX XXXX 5678")
                        cardRow(name: "Yet Another Card", number: "XXXX XXXX XXXX 0000")
                    }

                    Section {
                        NavigationLink(destination: NewCardView()) {
                            Text("Add New Card")
                                .padding(.vertical, 8)
                        }
                    }
                }
            .navigationTitle("Choose a card")
            .navigationBarTitleDisplayMode(.inline)
        }

    }

    func cardRow(name: String, number: String) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                Text(number)
            }

            Spacer()

            Image(systemName: "chevron.right")
        }

    }
}

struct ChargeCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChargeCardView()
    }
}
