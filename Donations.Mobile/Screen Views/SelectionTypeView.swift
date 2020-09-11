import SwiftUI

struct SelectionTypeView: View {
    private let types = ["Целевой сбор", "Регулярный сбор"]
    var body: some View {
        List(types, id: \.self) { type in
            Text(type)
        }
        .navigationBarTitle("Тип сбора", displayMode: .inline)
    }
}

struct SelectionTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionTypeView()
    }
}
