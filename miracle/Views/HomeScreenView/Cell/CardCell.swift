import SwiftUI

struct CardCell: View {
    var body: some View {
        VStack {
            Image("img_screenshot2023")
                .resizable()
                .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(96.0),
                       alignment: .leading)
                .scaledToFit()
                .cornerRadius(20.0)
            Text(StringConstants.kLblGermany)
                .font(FontScheme.kInterBold(size: getRelativeHeight(15.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
                .padding(.horizontal, getRelativeWidth(41.0))
            Text(StringConstants.kLbl1280)
                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(12.0)))
                .fontWeight(.heavy)
                .foregroundColor(ColorConstants.Black900A0)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(11.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(11.0))
                .padding(.horizontal, getRelativeWidth(41.0))
        }
        .frame(width: getRelativeWidth(146.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                   bottomRight: 21.0)
                .fill(ColorConstants.Black9000c))
        .hideNavigationBar()
    }
}

/* struct CardCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardCell()
 }
 } */
