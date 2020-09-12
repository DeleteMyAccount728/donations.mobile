import SwiftUI

struct DonationCover: View {
    var body: some View {
        HStack(spacing: 11.0) {
            Spacer()
            Image("PictureIcon")
                .frame(width: 22.0, height: 22.0)
            Text("Загрузить обложку")
                .font(.system(size: 16.0, weight: .medium))
                .foregroundColor(Color(UIColor(red: 0.247, green: 0.541, blue: 0.878, alpha: 1)))
            Spacer()
        }
        .frame(height: 140)
        .foregroundColor(.clear)
        .background(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color(UIColor(red: 0.247, green: 0.541, blue: 0.878, alpha: 1)), style: StrokeStyle(lineWidth: 1, dash: [5, 3]))
        )
    }
}

struct DonationCover_Previews: PreviewProvider {
    static var previews: some View {
        DonationCover()
    }
}
