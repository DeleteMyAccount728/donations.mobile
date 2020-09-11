import SwiftUI

struct XBaseButtonMediumSizeYRegular<ButtonText: StringProtocol>: View {
    
    let content: ButtonText
    
    init(@ViewBuilder content: () -> ButtonText) {
        self.content = content()
    }
    
    var body: some View {
        Text(content)
            .padding(EdgeInsets(top: 7.5, leading: 16.0, bottom: 8.5, trailing: 16.0))
            .font(.system(size: 15.0, weight: .medium, design: .default))
            .foregroundColor(.white)
            .background(Rectangle().fill(Color(UIColor(red: 0.286, green: 0.525, blue: 0.8, alpha: 1))))
            .cornerRadius(10.0)
    }
}

struct XBaseButtonMediumSizeYRegular_Previews: PreviewProvider {
    static var previews: some View {
        XBaseButtonMediumSizeYRegular {
            "Preview Text"
        }
    }
}
