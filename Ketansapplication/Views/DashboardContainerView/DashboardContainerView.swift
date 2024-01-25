import SwiftUI

struct DashboardContainerView: View {
    @StateObject var dashboardContainerViewModel = DashboardContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Text("Content")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(767.0))
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(24.0))
                Group {
                    NavigationLink(destination: SearchScreenOneView(),
                                   tag: "SearchScreenOneView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ReminderScreenOneView(),
                                   tag: "ReminderScreenOneView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: getRelativeWidth(359.0), height: UIScreen.main.bounds.height)
            .overlay(RoundedCorners().stroke(ColorConstants.Black900, lineWidth: 8))
            .background(RoundedCorners()
                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Bluegray40096,
                                                                 ColorConstants.WhiteA70000]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)))
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {}
    }
}

struct DashboardContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardContainerView()
    }
}
