import SwiftUI

struct DonationTypeView: View {
    let donationType: DonationType
    
    init(donationType: DonationType) {
        self.donationType = donationType
    }
    
    var body: some View {
        HStack(spacing: 12.0) {
            Image(donationType.image)
                .padding(.top, -4)
                .frame(width: 24.0, height: 24.0, alignment: .top)
            
            VStack(alignment: .leading) {
                Text(donationType.title)
                    .font(.system(size: 16.0, weight: .semibold, design: .default))
                    .foregroundColor(.black)
                Text(donationType.subtitle)
                    .font(.system(size: 13.0, weight: .regular, design: .default))
                    .foregroundColor(Color(UIColor(red: 0.427, green: 0.471, blue: 0.522, alpha: 1)))
            }
            
            Spacer()
            
            Image("DisclosureIcon")
        }
        .padding(EdgeInsets(top: 12, leading: 14, bottom: 12, trailing: 18.75))
        .frame(height: 62.0)
        .background(
            RoundedRectangle(cornerRadius: 10.0)
                .foregroundColor(Color(UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1)))
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.08)), lineWidth: 0.33)
            )
        )
    }
}

struct DonationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DonationTypeView(donationType: .regular)
    }
}
