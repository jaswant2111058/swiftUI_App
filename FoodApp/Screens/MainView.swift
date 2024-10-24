import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            LoginView()
                .tabItem {
                    Image(systemName: "person.fill.badge.plus")
                    Text("Login")
                }
        }
    }
}
