import SwiftUI

struct GoalDonationView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 26.0) {
                DonationCover()
                    .navigationBarTitle(Text("Целевой сбор"))
                
                DonationFormField(title: "Название сбора", placeholder: "Название сбора")
                
                DonationFormField(title: "Сумма, ₽", placeholder: "Сколько нужно собрать?")
                
                DonationFormField(title: "Цель", placeholder: "Например, лечение человека")
                
                DonationFormField(title: "Описание", placeholder: "На что пойдут деньги и как они кому-то помогут?")
                
                DonationFormField(title: "Куда получать деньги", placeholder: "Счёт VK Pay · 1234")
                
                XBaseButtonLargeFixedSizeYRegular {
                    "Далее"
                }
            }
            .padding(12)
        }
    }
}

struct GoalDonationView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDonationView()
    }
}
