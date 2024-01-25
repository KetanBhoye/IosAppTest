import SwiftUI

struct ColumnfourCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLbl4)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.horizontal, getRelativeWidth(3.0))
            Text(StringConstants.kLbl11)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
                .padding(.horizontal, getRelativeWidth(3.0))
            Text(StringConstants.kLbl18)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(28.0))
                .padding(.horizontal, getRelativeWidth(1.0))
            Text(StringConstants.kLbl25)
                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
        }
        .frame(width: getRelativeWidth(14.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ColumnfourCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnfourCell()
 }
 } */
