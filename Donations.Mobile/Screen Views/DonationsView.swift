import SwiftUI

struct DonationsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 24.0) {
                Text(LocalizedStringKey("У Вас пока нет сборов.\nНачните доброе дело."))
                    .font(.system(size: 16.0, weight: .regular, design: .default))
                    .foregroundColor(Color(UIColor(red: 0.506, green: 0.549, blue: 0.6, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: SelectionTypeView()) {
                    XBaseButtonMediumSizeYRegular {
                        "Создать сбор"
                    }
                }
            }
            .navigationBarTitle("Пожертвования", displayMode: .inline)
        }
    }
}

struct DonationsView_Previews: PreviewProvider {
    static var previews: some View {
        DonationsView()
    }
}
