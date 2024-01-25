import AuthenticationServices
import Foundation
import SwiftUI

struct AppleSignInResponse {
    var userIdentifier: String?
    var email: String?
    var middleName: String?
    var familyName: String?
    var givenName: String?
    var nickName: String?
}

@available(iOS 13.0, *)
open class AppleSignInManager: NSObject {
    static let shared: AppleSignInManager = .init()
    var result: ((_ user: AppleSignInResponse?) -> Void)?

    func login() {
        handleAuthorizationAppleIDButtonPress()
    }

    @objc func handleAuthorizationAppleIDButtonPress() {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]

        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.presentationContextProvider = self
        authorizationController.delegate = self
        authorizationController.performRequests()
    }
}

@available(iOS 13.0, *)
extension AppleSignInManager: ASAuthorizationControllerDelegate,
    ASAuthorizationControllerPresentationContextProviding
{
    public func authorizationController(controller _: ASAuthorizationController,
                                        didCompleteWithError _: Error)
    {
        result?(nil)
    }

    public func authorizationController(controller _: ASAuthorizationController,
                                        didCompleteWithAuthorization authorization: ASAuthorization)
    {
        guard let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential
        else { return }
        result?(getAppleSignInUser(appleIDCredential))
    }

    public func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        let viewController = UIApplication.shared.windows.last?.rootViewController
        return (viewController?.view.window!)!
    }

    private func getAppleSignInUser(_ credential: ASAuthorizationAppleIDCredential)
        -> AppleSignInResponse
    {
        let appleSignInUser = AppleSignInResponse(userIdentifier: credential.user,
                                                  email: credential.email,
                                                  middleName: credential.fullName?.middleName,
                                                  familyName: credential.fullName?.familyName,
                                                  givenName: credential.fullName?.givenName,
                                                  nickName: credential.fullName?.nickname)
        return appleSignInUser
    }
}
