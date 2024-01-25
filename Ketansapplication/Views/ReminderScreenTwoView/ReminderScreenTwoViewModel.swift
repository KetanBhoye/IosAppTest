import Foundation
import SwiftUI

class ReminderScreenTwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var meetingremText: String = ""
    @Published var calendardateText: String = ""
}
