import SwiftUI

struct RowschedulesvgrepCell: View {
    var body: some View {
        HStack {
            Image("img_schedulesvgrep")
                .resizable()
                .frame(width: getRelativeWidth(33.0), height: getRelativeWidth(35.0),
                       alignment: .leading)
                .scaledToFit()
            HStack {
                Text(StringConstants.kLblChooseDate)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(43.0))
                Image("img_vector_white_a700")
                    .resizable()
                    .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(26.0))
                    .padding(.trailing, getRelativeWidth(18.0))
            }
            .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(42.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                       bottomRight: 18.0)
                    .fill(ColorConstants.DeepPurpleA200))
            .shadow(radius: 27.182817459106445)
            .padding(.leading, getRelativeWidth(29.0))
        }
        .frame(width: getRelativeWidth(276.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowschedulesvgrepCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowschedulesvgrepCell()
 }
 } */
