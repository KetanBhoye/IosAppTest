import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    Image("img_search")
                        .resizable()
                        .frame(width: getRelativeWidth(23.0), height: getRelativeWidth(23.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(33.0))
                    Text(StringConstants.kLblDashboard)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(36.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(44.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 3, id: \.self) { index in
                                    ColumnOneCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(321.0), alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(18.0))
                    Button(action: {}, label: {
                        Image("img_group48")
                    })
                    .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                               bottomRight: 24.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(22.0))
                    VStack {
                        HStack {
                            HStack {
                                VStack {
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(24.0),
                                               height: getRelativeWidth(24.0), alignment: .center)
                                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0,
                                                y: 4)
                                        .padding(.horizontal, getRelativeWidth(18.0))
                                    Text(StringConstants.kLblDashboard)
                                        .font(FontScheme
                                            .kDMSansRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray50)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(61.0),
                                               height: getRelativeHeight(16.0), alignment: .center)
                                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0,
                                                y: 4)
                                        .padding(.top, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(44.0), alignment: .center)
                                Text(StringConstants.kLblReminders)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray50B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                            }
                            .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(44.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.leading, getRelativeWidth(11.0))
                            Spacer()
                            HStack {
                                Text(StringConstants.kLblProfile)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray50B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(35.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Text(StringConstants.kLblSettings)
                                    .font(FontScheme.kDMSansRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray50B2)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(46.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(28.0))
                            }
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(17.0),
                                   alignment: .bottom)
                            .padding(.vertical, getRelativeHeight(43.0))
                            .padding(.trailing, getRelativeWidth(19.0))
                        }
                        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(76.0),
                               alignment: .leading)
                        .background(RoundedCorners(bottomLeft: 35.0)
                            .fill(ColorConstants.Black9008c))
                        .shadow(radius: 16)
                    }
                    .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(76.0),
                           alignment: .leading)
                    .cornerRadius(0.0)
                    .padding(.top, getRelativeHeight(12.0))
                }
                .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(754.0),
                       alignment: .leading)
                .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
                .background(RoundedCorners()
                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray40096,
                                                                     ColorConstants.WhiteA70000]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
            }
            .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(754.0),
                   alignment: .leading)
            VStack {}
                .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(56.0),
                       alignment: .leading)
        }
        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(684.0))
        .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
        .background(RoundedCorners()
            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray40096,
                                                             ColorConstants.WhiteA70000]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)))
        .hideNavigationBar()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
