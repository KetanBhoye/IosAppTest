import SwiftUI

struct SearchScreenOneView: View {
    @StateObject var searchScreenOneViewModel = SearchScreenOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Image("img_search_23x21")
                            .resizable()
                            .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(23.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.bottom, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLblOm, text: $searchScreenOneViewModel.searchbar)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                            .foregroundColor(ColorConstants.Black900)
                            .padding()
                        Image("img_group")
                            .resizable()
                            .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(54.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                               bottomRight: 18.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(radius: 27.182817459106445)
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .leading) {
                            ZStack(alignment: .leading) {
                                Text(StringConstants.kLblOmkarSalunkhe)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(27.0), alignment: .topLeading)
                                Text(StringConstants.kLblOmkarSalunkhe)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(168.0),
                                           height: getRelativeHeight(27.0), alignment: .topLeading)
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(27.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(28.0))
                            .padding(.trailing, getRelativeWidth(102.0))
                            HStack {
                                Text(StringConstants.kLblOm2)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(28.0))
                                Image("img_arrow1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(2.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(193.0))
                                    .padding(.trailing, getRelativeWidth(22.0))
                            }
                            .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(39.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(radius: 27.182817459106445)
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(39.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(radius: 27.182817459106445)
                        HStack {
                            Text(StringConstants.kLblOmKulkarni)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(110.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.bottom, getRelativeHeight(7.0))
                                .padding(.leading, getRelativeWidth(28.0))
                            Spacer()
                            Image("img_arrow1")
                                .resizable()
                                .frame(width: getRelativeWidth(21.0),
                                       height: getRelativeHeight(2.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.bottom, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(21.0))
                        }
                        .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(39.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(radius: 27.182817459106445)
                        .padding(.top, getRelativeHeight(8.0))
                    }
                    .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(86.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0))
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.horizontal, getRelativeWidth(11.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(151.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(29.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kLblOmkarSalunkhe)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(25.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(28.0))
                        Image("img_arrow1")
                            .resizable()
                            .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(2.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.bottom, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(76.0))
                            .onTapGesture {
                                searchScreenOneViewModel.nextScreen = "SearchScreenTwoView"
                            }
                    }
                    .onTapGesture {
                        searchScreenOneViewModel.nextScreen = "SearchScreenTwoView"
                    }
                    .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(39.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(radius: 27.182817459106445)
                    .padding(.horizontal, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(39.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(9.0))
                .padding(.horizontal, getRelativeWidth(29.0))
                VStack {
                    HStack {
                        Text(StringConstants.kLblOmkarPatil)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(25.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(28.0))
                        Spacer()
                        Image("img_arrow1")
                            .resizable()
                            .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(2.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.bottom, getRelativeHeight(20.0))
                            .padding(.trailing, getRelativeWidth(21.0))
                    }
                    .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(39.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(radius: 27.182817459106445)
                    .padding(.horizontal, getRelativeWidth(11.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(39.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(9.0))
                .padding(.horizontal, getRelativeWidth(29.0))
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_todolistvector")
                        .resizable()
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(82.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(116.0))
                    Text(StringConstants.kLblAddTodo)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(22.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(27.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(282.0))
                        .padding(.horizontal, getRelativeWidth(101.0))
                    Divider()
                        .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(5.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 2.5, topRight: 2.5, bottomLeft: 2.5,
                                                   bottomRight: 2.5)
                                .fill(ColorConstants.Black901))
                        .padding(.top, getRelativeHeight(36.0))
                        .padding(.horizontal, getRelativeWidth(90.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(433.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(64.0))
                .padding(.horizontal, getRelativeWidth(29.0))
                Group {
                    NavigationLink(destination: SearchScreenTwoView(),
                                   tag: "SearchScreenTwoView",
                                   selection: $searchScreenOneViewModel.nextScreen,
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

struct SearchScreenOneView_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreenOneView()
    }
}
