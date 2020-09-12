import SwiftUI

struct SelectionTypeView: View {
    private let types = DonationType.allCases

    var body: some View {
        VStack() {
            ForEach(types, id: \.self) { type in
                NavigationLink(destination: type.view) {
                    DonationTypeView(donationType: type)
                        .padding(.horizontal, 12)
                }
            }
            .navigationBarTitle("Тип сбора", displayMode: .inline)
//            .navigationBarItems(leading: Image("BackIcon"))
//            .navigationBarBackButtonHidden(true)
        }
    }
}


fileprivate extension DonationType {
    var view: some View {
        switch self {
        case .goal:
            return AnyView(GoalDonationView())
        case .regular:
            return AnyView(RegularDonationView())
        }
    }
}

struct SelectionTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionTypeView()
    }
}
