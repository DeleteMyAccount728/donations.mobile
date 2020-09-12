import SwiftUI

struct DonationFormField: View {
    @State var text: String = ""
    
    let title: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundColor(Color(UIColor(red: 0.427, green: 0.471, blue: 0.522, alpha: 1)))
                .font(.system(size: 14.0, weight: .regular))
            
            TextField(placeholder, text: $text)
                .foregroundColor(Color.black)
                .font(.system(size: 16.0, weight: .regular))
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color(UIColor(red: 0.949, green: 0.953, blue: 0.961, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.12)), lineWidth: 0.5)
                    )
            )
        }
    }
}

// TODO:
struct MultilineTextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

struct DonationFormField_Previews: PreviewProvider {
    static var previews: some View {
        DonationFormField(title: "Title", placeholder: "Very Double Long Subtitle Very Double Long Subtitle Very Double Long Subtitle")
    }
}
