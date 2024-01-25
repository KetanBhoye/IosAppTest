import Foundation
import SwiftUI

class LoginSignupViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var buttonPicker1: String = "Option 1"
    @Published var buttonPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var appleSignInResponse: AppleSignInResponse?
    @Published var googleSignInResponse: GoogleSignInResponse?

    func googleSignIn() {
        GoogleSignInHelper.shared.signIn(completion: { response in
            if let response = response {
                self.onSuccessGoogleSignIn(response: response)
            } else {
                self.onErrorGoogleSignIn()
            }
        })
    }

    func onSuccessGoogleSignIn(response: googleSignIn) {
        self.googleSignIn = response
    }

    func onErrorGoogleSignIn() {}

    func appleSignIn() {
        let appleSignIn = AppleSignInManager.shared

        appleSignIn.login()
        appleSignIn.result = { response in
            if let response = response {
                self.onSuccessAppleSignIn(response: response)
            } else {
                self.onErrorAppleSignIn()
            }
        }
    }

    func onSuccessAppleSignIn(response: appleSignIn) {
        self.appleSignIn = response
    }

    func onErrorAppleSignIn() {}
}
