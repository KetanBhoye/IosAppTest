import SwiftUI

struct ColumnOneCell: View {
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblTaskTitle)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(19.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                    Text(StringConstants.kLblTaskInfo)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(11.0))
                    Text(StringConstants.kLblContactName)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(1.0))
                        .padding(.horizontal, getRelativeWidth(11.0))
                }
                .frame(width: getRelativeWidth(319.0), height: getRelativeHeight(104.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0)
                        .fill(ColorConstants.WhiteA700))
            }
            .frame(width: getRelativeWidth(319.0), height: getRelativeHeight(104.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0))
        }
        .frame(width: getRelativeWidth(319.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0))
        .hideNavigationBar()
    }
}

/* struct ColumnOneCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnOneCell()
 }
 } */
