import SwiftUI

struct ReminderScreenOneView: View {
    @StateObject var reminderScreenOneViewModel = ReminderScreenOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblSetReminder)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(89.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                    Divider()
                                        .frame(width: getRelativeWidth(89.0),
                                               height: getRelativeHeight(1.0), alignment: .leading)
                                        .background(ColorConstants.WhiteA700)
                                }
                                .frame(width: getRelativeWidth(89.0),
                                       height: getRelativeHeight(21.0), alignment: .top)
                                Spacer()
                                Text(StringConstants.kLblTasks)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(39.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(199.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(199.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(77.0))
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgEnterTaskDeta)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(24.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(216.0),
                                                   height: getRelativeHeight(36.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(24.0))
                                            .padding(.horizontal, getRelativeWidth(19.0))
                                        HStack {
                                            Spacer()
                                            VStack(alignment: .leading, spacing: 0) {
                                                ZStack {
                                                    Image("img_birthdaycakes")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(77.0),
                                                               height: getRelativeHeight(78.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.vertical, getRelativeHeight(21.0))
                                                        .padding(.leading, getRelativeWidth(23.0))
                                                        .padding(.trailing, getRelativeWidth(20.0))
                                                }
                                                .hideNavigationBar()
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeWidth(120.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners(topLeft: 16.0,
                                                                        topRight: 16.0,
                                                                        bottomLeft: 16.0,
                                                                        bottomRight: 16.0)
                                                        .stroke(ColorConstants.Black900,
                                                                lineWidth: 4))
                                                .background(RoundedCorners(topLeft: 16.0,
                                                                           topRight: 16.0,
                                                                           bottomLeft: 16.0,
                                                                           bottomRight: 16.0)
                                                        .fill(ColorConstants.Gray302))
                                                .shadow(color: ColorConstants.Black90026, radius: 8,
                                                        x: 3, y: 3)
                                                Text(StringConstants.kMsgBirthdayRemind)
                                                    .font(FontScheme
                                                        .kPoppinsMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(122.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(5.0))
                                            }
                                            .frame(width: getRelativeWidth(122.0),
                                                   height: getRelativeHeight(145.0),
                                                   alignment: .top)
                                            .padding(.bottom, getRelativeHeight(13.0))
                                            VStack(alignment: .trailing, spacing: 0) {
                                                ZStack {
                                                    Image("img_meetingperson")
                                                        .resizable()
                                                        .frame(width: getRelativeWidth(97.0),
                                                               height: getRelativeHeight(102.0),
                                                               alignment: .center)
                                                        .scaledToFit()
                                                        .clipped()
                                                        .padding(.vertical, getRelativeHeight(9.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(12.0))
                                                }
                                                .hideNavigationBar()
                                                .onTapGesture {
                                                    reminderScreenOneViewModel
                                                        .nextScreen = "ReminderScreenTwoView"
                                                }
                                                .frame(width: getRelativeWidth(120.0),
                                                       height: getRelativeWidth(120.0),
                                                       alignment: .leading)
                                                .overlay(RoundedCorners(topLeft: 16.0,
                                                                        topRight: 16.0,
                                                                        bottomLeft: 16.0,
                                                                        bottomRight: 16.0)
                                                        .stroke(ColorConstants.Black900,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 16.0,
                                                                           topRight: 16.0,
                                                                           bottomLeft: 16.0,
                                                                           bottomRight: 16.0)
                                                        .fill(ColorConstants.Gray302))
                                                .shadow(color: ColorConstants.Black90026, radius: 8,
                                                        x: 3, y: 3)
                                                Text(StringConstants.kLblMeetReminder)
                                                    .font(FontScheme
                                                        .kPoppinsBold(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(101.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(13.0))
                                                    .padding(.trailing, getRelativeWidth(4.0))
                                            }
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(143.0),
                                                   alignment: .top)
                                            .padding(.bottom, getRelativeHeight(15.0))
                                            .padding(.leading, getRelativeWidth(16.0))
                                            VStack(alignment: .leading, spacing: 0) {
                                                Image("img_rectangle122")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(120.0),
                                                           height: getRelativeWidth(120.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblOtherTask)
                                                    .font(FontScheme
                                                        .kPoppinsMedium(size: getRelativeHeight(13.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(40.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(4.0))
                                                    .padding(.trailing, getRelativeWidth(10.0))
                                            }
                                            .frame(width: getRelativeWidth(120.0),
                                                   height: getRelativeHeight(144.0),
                                                   alignment: .top)
                                            .padding(.bottom, getRelativeHeight(14.0))
                                            .padding(.leading, getRelativeWidth(25.0))
                                        }
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(159.0),
                                               alignment: .trailing)
                                        .padding(.vertical, getRelativeHeight(19.0))
                                    }
                                    .frame(width: getRelativeWidth(342.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(ColorConstants.WhiteA700))
                                }
                                .padding(.leading, getRelativeWidth(19.0))
                                .padding(.trailing, getRelativeWidth(19.0))
                                HStack {
                                    TextField(StringConstants.kLblTitle,
                                              text: $reminderScreenOneViewModel.othercardText)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(68.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Black90026, radius: 8, x: 3, y: 3)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.leading, getRelativeWidth(19.0))
                                .padding(.trailing, getRelativeWidth(14.0))
                                Group {
                                    HStack {
                                        TextField(StringConstants.kLblPersonName,
                                                  text: $reminderScreenOneViewModel
                                                      .bottomnavigationbarText)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(20.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                            .keyboardType(.alphabet)
                                    }
                                    .onChange(of: reminderScreenOneViewModel
                                        .bottomnavigationbarText) { newValue in

                                            reminderScreenOneViewModel
                                                .isValidBottomnavigationbarText = newValue
                                                .isText(isMandatory: false)
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(68.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                            bottomLeft: 16.0, bottomRight: 16.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black90026, radius: 8, x: 3, y: 3)
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                    .padding(.trailing, getRelativeWidth(13.0))
                                    if !reminderScreenOneViewModel.isValidBottomnavigationbarText {
                                        Text("Please enter valid text.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(20.0)))
                                            .frame(width: getRelativeWidth(342.0),
                                                   height: getRelativeHeight(68.0),
                                                   alignment: .center)
                                    }
                                }
                                ZStack(alignment: .bottomLeading) {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblSeptember2024)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(16.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(133.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                            .padding(.horizontal, getRelativeWidth(21.0))
                                        HStack(spacing: 0) {
                                            ScrollView(.horizontal, showsIndicators: false) {
                                                LazyHStack {
                                                    ForEach(0 ... 6, id: \.self) { index in
                                                        ColumnfourCell()
                                                    }
                                                }
                                            }
                                        }
                                        .frame(width: getRelativeWidth(300.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(13.0))
                                        .padding(.horizontal, getRelativeWidth(21.0))
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(253.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                            bottomLeft: 16.0, bottomRight: 16.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black90026, radius: 8, x: 3, y: 3)
                                    .padding(.bottom, getRelativeHeight(48.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                    .padding(.trailing, getRelativeWidth(13.0))
                                    VStack {
                                        HStack {
                                            HStack {
                                                VStack {
                                                    ZStack {}
                                                        .hideNavigationBar()
                                                        .onTapGesture {}
                                                        .frame(width: getRelativeWidth(24.0),
                                                               height: getRelativeWidth(24.0),
                                                               alignment: .center)
                                                        .shadow(color: ColorConstants.Black9003f,
                                                                radius: 4, x: 0, y: 4)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(18.0))
                                                    Text(StringConstants.kLblDashboard)
                                                        .font(FontScheme
                                                            .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                        .fontWeight(.regular)
                                                        .foregroundColor(ColorConstants.Gray50)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.center)
                                                        .frame(width: getRelativeWidth(61.0),
                                                               height: getRelativeHeight(16.0),
                                                               alignment: .center)
                                                        .shadow(color: ColorConstants.Black9003f,
                                                                radius: 4, x: 0, y: 4)
                                                        .padding(.top, getRelativeHeight(4.0))
                                                }
                                                .frame(width: getRelativeWidth(61.0),
                                                       height: getRelativeHeight(44.0),
                                                       alignment: .center)
                                                Text(StringConstants.kLblReminders)
                                                    .font(FontScheme
                                                        .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray50B2)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(59.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(8.0))
                                            }
                                            .frame(width: getRelativeWidth(128.0),
                                                   height: getRelativeHeight(44.0),
                                                   alignment: .center)
                                            .padding(.vertical, getRelativeHeight(16.0))
                                            .padding(.leading, getRelativeWidth(11.0))
                                            Spacer()
                                            HStack {
                                                Text(StringConstants.kLblProfile)
                                                    .font(FontScheme
                                                        .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray50B2)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(35.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLblSettings)
                                                    .font(FontScheme
                                                        .kDMSansRegular(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.regular)
                                                    .foregroundColor(ColorConstants.Gray50B2)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(46.0),
                                                           height: getRelativeHeight(16.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(28.0))
                                            }
                                            .frame(width: getRelativeWidth(109.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .bottom)
                                            .padding(.vertical, getRelativeHeight(43.0))
                                            .padding(.trailing, getRelativeWidth(19.0))
                                        }
                                        .frame(width: getRelativeWidth(359.0),
                                               height: getRelativeHeight(76.0), alignment: .center)
                                        .background(RoundedCorners(bottomLeft: 35.0)
                                            .fill(ColorConstants.Black9008c))
                                        .shadow(radius: 16)
                                        .padding(.vertical, getRelativeHeight(8.0))
                                        .padding(.horizontal, getRelativeWidth(8.0))
                                    }
                                    .frame(width: getRelativeWidth(375.0),
                                           height: getRelativeHeight(99.0),
                                           alignment: .bottomLeading)
                                    .cornerRadius(0.0)
                                    .padding(.top, getRelativeHeight(202.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(301.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(21.0))
                            }
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(763.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .Bluegray400,
                                            ColorConstants
                                                .LightBlue30000]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                        }
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(763.0),
                               alignment: .leading)
                        .overlay(RoundedCorners()
                            .stroke(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .Indigo800,
                                        ColorConstants
                                            .Bluegray40000]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing),
                                    lineWidth: 8))
                        .background(RoundedCorners().fill(ColorConstants.Black900))
                        .padding(.top, getRelativeHeight(15.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(804.0),
                           alignment: .leading)
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(56.0),
                           alignment: .leading)
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .overlay(RoundedCorners()
                    .stroke(LinearGradient(gradient: Gradient(colors: [ColorConstants.Indigo800,
                                                                       ColorConstants
                                                                           .Bluegray40000]),
                            startPoint: .topLeading, endPoint: .bottomTrailing),
                            lineWidth: 8))
                .background(RoundedCorners().fill(ColorConstants.Black900))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ReminderScreenTwoView(),
                                   tag: "ReminderScreenTwoView",
                                   selection: $reminderScreenOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Black900)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ReminderScreenOneView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderScreenOneView()
    }
}
