import SwiftUI

struct HomeScreenView: View {
    @StateObject var homeScreenViewModel = HomeScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblMiracles)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(24.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    HStack {
                        Image("img_icons8search1")
                            .resizable()
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.bottom, getRelativeHeight(6.0))
                            .padding(.leading, getRelativeWidth(7.0))
                        Text(StringConstants.kLblSearch)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(13.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(13.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(33.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0)
                            .fill(ColorConstants.Gray100))
                    .padding(.top, getRelativeHeight(13.0))
                    Text(StringConstants.kMsgFeaturedMiracl)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        HStack {
                            Image("img_icons8sortalp")
                                .resizable()
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(12.0))
                            Text(StringConstants.kLblSortBy)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(13.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(45.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(14.0))
                                .padding(.trailing, getRelativeWidth(50.0))
                        }
                        .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray100))
                        Spacer()
                        HStack {
                            Image("img_icons8filter1")
                                .resizable()
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(26.0))
                            Text(StringConstants.kLblFilter)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(13.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(14.0))
                                .padding(.trailing, getRelativeWidth(55.0))
                        }
                        .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray100))
                    }
                    .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.trailing, getRelativeWidth(11.0))
                    ScrollView {
                        Grid(0 ..< 5, id: \.self) { index in
                            CardCell()
                        }
                    }
                    .gridStyle(StaggeredGridStyle(.vertical, tracks: 2, spacing: 19.0))
                    .padding(.top, getRelativeHeight(22.0))
                    .padding(.trailing, getRelativeWidth(12.0))
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(649.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(28.0))
                .padding(.trailing, getRelativeWidth(20.0))
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(82.0),
                           alignment: .bottomLeading)
                    .background(ColorConstants.WhiteA700)
                    .padding(.top, getRelativeHeight(688.85))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(33.0))
            .padding(.horizontal, getRelativeWidth(7.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
