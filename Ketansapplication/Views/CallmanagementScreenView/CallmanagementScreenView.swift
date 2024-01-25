import SwiftUI

struct CallmanagementScreenView: View {
    @StateObject var callmanagementScreenViewModel = CallmanagementScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    Image("img_notificationbe_49x49")
                                        .resizable()
                                        .frame(width: getRelativeWidth(49.0),
                                               height: getRelativeWidth(49.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(11.0))
                                        .padding(.bottom, getRelativeHeight(12.0))
                                        .padding(.leading, getRelativeWidth(11.0))
                                    Text(StringConstants.kMsgMissedReminder)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(214.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(21.0))
                                        .padding(.bottom, getRelativeHeight(20.0))
                                        .padding(.leading, getRelativeWidth(19.0))
                                }
                                .frame(width: getRelativeWidth(354.0),
                                       height: getRelativeHeight(72.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Gray100))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 9)
                            }
                            .frame(width: getRelativeWidth(354.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            VStack {
                                Text(StringConstants.kMsgTodayJan182)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(166.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                StackpngwingtwelveCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(341.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(10.0))
                                .padding(.horizontal, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(354.0), height: getRelativeHeight(300.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Gray101))
                            .padding(.top, getRelativeHeight(25.0))
                            VStack {
                                Text(StringConstants.kMsgYesterdayJan)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray801)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(205.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 1, id: \.self) { index in
                                                StackpngwingfifteenCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(340.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(7.0))
                                .padding(.horizontal, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(354.0), height: getRelativeHeight(246.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                       bottomLeft: 30.0, bottomRight: 30.0)
                                    .fill(ColorConstants.Gray101))
                            .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(355.0), height: getRelativeHeight(653.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(653.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(118.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(118.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(18.0))
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
                .background(RoundedCorners().fill(ColorConstants.Bluegray400))
                .padding(.top, getRelativeHeight(34.0))
                .padding(.horizontal, getRelativeWidth(8.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ReminderScreenOneView(),
                                   tag: "ReminderScreenOneView",
                                   selection: $callmanagementScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Bluegray400)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct CallmanagementScreenView_Previews: PreviewProvider {
    static var previews: some View {
        CallmanagementScreenView()
    }
}
