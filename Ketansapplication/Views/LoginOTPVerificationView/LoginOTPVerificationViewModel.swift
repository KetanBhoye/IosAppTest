import Foundation
import SwiftUI

class LoginOTPVerificationViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var buttonPicker1: String = "Option 1"
    @Published var buttonPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
