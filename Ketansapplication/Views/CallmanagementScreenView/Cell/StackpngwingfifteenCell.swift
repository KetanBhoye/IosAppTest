import SwiftUI

struct StackpngwingfifteenCell: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack {
                Image("img_pngwing12")
                    .resizable()
                    .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(29.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kMsgMissedCallV)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(229.0), height: getRelativeHeight(40.0),
                   alignment: .leading)
            .padding(.bottom, getRelativeHeight(28.09))
            .padding(.trailing, getRelativeWidth(100.0))
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(64.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0)
                        .fill(ColorConstants.Bluegray102))
                .padding(.bottom, getRelativeHeight(15.0))
            HStack {
                Image("img_missed3")
                    .resizable()
                    .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(32.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(9.0))
                HStack {
                    Text(StringConstants.kMsgMissedMeeting)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(61.0),
                               alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Image("img_reloading7")
                            .resizable()
                            .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(32.0),
                                   alignment: .leading)
                            .scaledToFit()
                        Text(StringConstants.kLblRetry)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(51.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(80.0))
                }
                .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(64.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(17.0))
                .padding(.trailing, getRelativeWidth(24.0))
            }
            .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(79.0),
                   alignment: .leading)
            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                    bottomRight: 10.0)
                    .stroke(ColorConstants.Black900,
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                       bottomRight: 10.0)
                    .fill(ColorConstants.Bluegray50))
            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 7)
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(338.0), alignment: .leading)
    }
}

/* struct StackpngwingfifteenCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackpngwingfifteenCell()
 }
 } */
