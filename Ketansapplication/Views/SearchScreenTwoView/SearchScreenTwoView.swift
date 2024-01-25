import SwiftUI

struct SearchScreenTwoView: View {
    @StateObject var searchScreenTwoViewModel = SearchScreenTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Spacer()
                            Image("img_search_23x21")
                                .resizable()
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeHeight(23.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(16.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            TextField(StringConstants.kLblOmkarSalunkhe,
                                      text: $searchScreenTwoViewModel.groupfive)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .padding()
                            Image("img_group")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(16.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(54.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(radius: 27.182817459106445)
                        VStack {
                            Text(StringConstants.kLblOmkarSalunkhe)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(22.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(174.0),
                                       height: getRelativeHeight(27.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                            HStack {
                                Text(StringConstants.kLblContactNumber)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(36.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kMsg91123456789)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(133.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(10.0))
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(36.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                            HStack {
                                Text(StringConstants.kLblEmailId)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kMsgDummyemailGmai)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(18.0))
                            }
                            .frame(width: getRelativeWidth(258.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(12.0))
                            Text(StringConstants.kLblCallReminder)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(33.0))
                                .padding(.horizontal, getRelativeWidth(77.0))
                            Text(StringConstants.kLblEmailReminder)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(111.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(77.0))
                            Text(StringConstants.kLblSendInvitation)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(19.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(77.0))
                        }
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(291.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 26.0, topRight: 26.0, bottomLeft: 26.0,
                                                   bottomRight: 26.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(radius: 27.182817459106445)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                        VStack {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            RowschedulesvgrepCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(279.0), alignment: .center)
                            .padding(.horizontal, getRelativeWidth(13.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblAddTodo)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(22.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(11.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(304.0),
                                               height: getRelativeHeight(49.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                                   bottomLeft: 18.0,
                                                                   bottomRight: 18.0)
                                                .fill(ColorConstants.DeepPurpleA200))
                                        .shadow(radius: 27.182817459106445)
                                        .padding(.top, getRelativeHeight(21.0))
                                }
                            })
                            .frame(width: getRelativeWidth(304.0), height: getRelativeHeight(49.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0,
                                                       bottomLeft: 18.0, bottomRight: 18.0)
                                    .fill(ColorConstants.DeepPurpleA200))
                            .shadow(radius: 27.182817459106445)
                            .padding(.top, getRelativeHeight(21.0))
                        }
                        .frame(width: getRelativeWidth(304.0), height: getRelativeHeight(175.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(94.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(637.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(20.0))
                }
                .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(637.0),
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
                .padding(.top, getRelativeHeight(41.0))
                Group {
                    NavigationLink(destination: ReminderScreenOneView(),
                                   tag: "ReminderScreenOneView",
                                   selection: $searchScreenTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(796.0))
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

struct SearchScreenTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreenTwoView()
    }
}
