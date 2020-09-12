import SwiftUI

struct XBaseButtonLargeFixedSizeYRegular<ButtonText: StringProtocol>: View {
    
    let content: ButtonText
    
    init(@ViewBuilder content: () -> ButtonText) {
        self.content = content()
    }
    
    var body: some View {
        Text(content)
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .font(.system(size: 17.0, weight: .medium, design: .default))
            .foregroundColor(.white)
            .background(Rectangle().fill(Color(UIColor(red: 0.286, green: 0.525, blue: 0.8, alpha: 1))))
            .cornerRadius(10.0)
    }
}

struct XBaseButtonLargeFixedSizeYRegular_Previews: PreviewProvider {
    static var previews: some View {
        XBaseButtonLargeFixedSizeYRegular {
            "Preview Text"
        }
    }
}
