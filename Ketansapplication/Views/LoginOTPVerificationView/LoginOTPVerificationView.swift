import SwiftUI

struct LoginOTPVerificationView: View {
    @StateObject var loginOTPVerificationViewModel = LoginOTPVerificationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Text(StringConstants.kLblWelcome)
                .font(FontScheme.kInterBold(size: getRelativeHeight(32.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.WhiteA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(39.0),
                       alignment: .topLeading)
                .padding(.horizontal, getRelativeWidth(123.0))
            VStack {
                Text(StringConstants.kLblLoginAccount)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(33.0))
                    .padding(.horizontal, getRelativeWidth(18.0))
                Text(StringConstants.kMsgHelloYouMust)
                    .font(FontScheme.kArimoRomanBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(34.0))
                    .padding(.horizontal, getRelativeWidth(18.0))
                HStack {
                    Button(action: {}, label: {
                        Image("img_vector_bluegray_400")
                    })
                    .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                           alignment: .center)
                    .background(ColorConstants.Gray301)
                    Text(StringConstants.kLblPhoneNumber)
                        .font(FontScheme.kArimoRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray301)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(14.0))
                }
                .onTapGesture {}
                .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(37.0))
                .padding(.horizontal, getRelativeWidth(22.0))
                HStack {
                    HStack {
                        Picker(StringConstants.kLbl91,
                               selection: $loginOTPVerificationViewModel.buttonPicker1) {
                            ForEach(loginOTPVerificationViewModel.buttonPicker1Values,
                                    id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.WhiteA700)
                        .font(.system(size: getRelativeHeight(14)))
                        .pickerStyle(MenuPickerStyle())
                        Text(StringConstants.kLbl1234567890)
                            .font(FontScheme.kArimoRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(6.0))
                    }
                    .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(5.0))
                    .padding(.leading, getRelativeWidth(5.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblResend)
                                .font(FontScheme
                                    .kMontserratRomanBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(21.0))
                                .padding(.vertical, getRelativeHeight(11.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(40.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.DeepPurpleA200))
                                .padding(.vertical, getRelativeHeight(5.0))
                                .padding(.trailing, getRelativeWidth(4.0))
                        }
                    })
                    .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(40.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.DeepPurpleA200))
                    .padding(.vertical, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                        bottomRight: 8.0)
                        .stroke(ColorConstants.Bluegray100,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(10.0))
                .padding(.horizontal, getRelativeWidth(18.0))
                HStack {
                    Image("img_vector_gray_301")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(58.0))
                    VStack {
                        Text(StringConstants.kLblVerifyCode)
                            .font(FontScheme.kArimoRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray301)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            Spacer()
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Gray301,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Gray301,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(13.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Gray301,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(14.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeWidth(50.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Gray301,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(14.0))
                        }
                        .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(50.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(75.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(75.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(26.0))
            }
            .frame(width: getRelativeWidth(377.0), height: getRelativeHeight(620.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 25.0, topRight: 25.0, bottomLeft: 25.0,
                                       bottomRight: 25.0)
                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray400A3,
                                                                     ColorConstants.WhiteA700A3]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
            .padding(.top, getRelativeHeight(73.0))
            .padding(.horizontal, getRelativeWidth(8.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(805.0))
        .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
        .background(RoundedCorners()
            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray40000,
                                                             ColorConstants.Indigo800]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)))
        .hideNavigationBar()
    }
}

struct LoginOTPVerificationView_Previews: PreviewProvider {
    static var previews: some View {
        LoginOTPVerificationView()
    }
}
