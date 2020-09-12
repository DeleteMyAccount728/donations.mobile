enum DonationType: CaseIterable {
    case goal
    case regular
    
    var title: String {
        switch self {
        case .goal:
            return "Целевой сбор"
        case .regular:
            return "Регулярный сбор"
        }
    }
    
    var subtitle: String {
        switch self {
        case .goal:
            return "Когда есть определённая цель"
        case .regular:
            return "Если помощь нужна ежемесячно"
        }
    }
    
    var image: String {
        switch self {
        case .goal:
            return "GoalDonation"
        case .regular:
            return "RegularDonation"
        }
    }
}
