import SwiftUI

struct LoginSignupView: View {
    @StateObject var loginSignupViewModel = LoginSignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    VStack {
                        Text(StringConstants.kLblLoginAccount)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(93.0))
                            .padding(.horizontal, getRelativeWidth(90.0))
                        Text(StringConstants.kMsgHelloYouMust)
                            .font(FontScheme.kArimoRomanBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                        HStack {
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeWidth(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblPhoneNumber)
                                .font(FontScheme.kArimoRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(26.0))
                        .padding(.horizontal, getRelativeWidth(18.0))
                        HStack {
                            Picker(StringConstants.kLbl91,
                                   selection: $loginSignupViewModel.buttonPicker1) {
                                ForEach(loginSignupViewModel.buttonPicker1Values,
                                        id: \.self) { value in
                                    Text(value)
                                }
                            }
                            .foregroundColor(ColorConstants.Black900)
                            .font(.system(size: getRelativeHeight(14)))
                            .pickerStyle(MenuPickerStyle())
                            Text(StringConstants.kLbl123456789)
                                .font(FontScheme.kArimoRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                bottomRight: 8.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.WhiteA7004c))
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        Button(action: {
                            loginSignupViewModel.nextScreen = "LoginOTPVerificationView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSignIn)
                                    .font(FontScheme.kArimoRomanBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(14.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.WhiteA7007f))
                                    .padding(.top, getRelativeHeight(27.0))
                                    .padding(.horizontal, getRelativeWidth(11.0))
                            }
                        })
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.WhiteA7007f))
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Bluegray101)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                            Spacer()
                            Text(StringConstants.kLblSignInWith)
                                .font(FontScheme
                                    .kMontserratRomanRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(71.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                            Spacer()
                            Divider()
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray300)
                                .padding(.vertical, getRelativeHeight(7.0))
                        }
                        .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(15.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(28.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        HStack {
                            Image("img_frame3")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.leading, getRelativeWidth(72.0))
                            Text(StringConstants.kMsgSignInWithAp)
                                .font(FontScheme.kArimoRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(171.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(7.0))
                                .padding(.trailing, getRelativeWidth(68.0))
                        }
                        .onTapGesture {
                            loginSignupViewModel.appleSignIn()
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(ColorConstants.Black900))
                        .padding(.top, getRelativeHeight(34.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                        VStack {
                            HStack {
                                Image("img_frame3_26x28")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(62.0))
                                Text(StringConstants.kMsgSignInWithGo)
                                    .font(FontScheme.kArimoRomanBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(185.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(6.0))
                                    .padding(.trailing, getRelativeWidth(57.0))
                            }
                            .onTapGesture {
                                loginSignupViewModel.googleSignIn()
                            }
                            .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA7007f))
                        }
                        .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                        .padding(.vertical, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(602.0),
                           alignment: .bottomLeading)
                    .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                               bottomRight: 25.0)
                            .fill(ColorConstants.WhiteA70033))
                    .padding(.top, getRelativeHeight(57.0))
                    Image("img_d0d7a026be1f52d")
                        .resizable()
                        .frame(width: getRelativeWidth(114.0), height: getRelativeWidth(114.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                                   bottomRight: 36.0))
                        .padding(.bottom, getRelativeHeight(545.0))
                        .padding(.horizontal, getRelativeWidth(124.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(361.0), height: getRelativeHeight(659.0),
                       alignment: .center)
                .padding(.bottom, getRelativeHeight(90.0))
                .padding(.horizontal, getRelativeWidth(15.0))
                Group {
                    NavigationLink(destination: LoginOTPVerificationView(),
                                   tag: "LoginOTPVerificationView",
                                   selection: $loginSignupViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(805.0))
            .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
            .background(RoundedCorners()
                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray40096,
                                                                 ColorConstants.WhiteA70000]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSignupView()
    }
}
