import Foundation
import SwiftUI

class ReminderScreenOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var othercardText: String = ""
    @Published var bottomnavigationbarText: String = ""
    @Published var isValidBottomnavigationbarText: Bool = true
}
