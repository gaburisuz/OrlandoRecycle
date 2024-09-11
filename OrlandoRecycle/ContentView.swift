import SwiftUI

struct ContentView: View {
    // State variable to track whether the loading screen is showing
    @State private var isLoading: Bool = true

    var body: some View {
        ZStack {
            if isLoading {
                // Display the loading screen if still loading
                LoadingScreen()
            } else {
                // Display the main content with a tab view
                TabView {
                    // First tab: Recycling Information
                    NavigationView {
                        RecyclingInformation()
                    }
                    .tabItem {
                        Image(systemName: "book")
                        Text("Recycling Info")
                            .font(.custom("League Spartan", size: 14))
                    }

                    // Second tab: Find Recycling Centers
                    NavigationView {
                        FindCenters()
                    }
                    .tabItem {
                        Image(systemName: "map")
                        Text("Find Centers")
                            .font(.custom("League Spartan", size: 14))
                    }

                    // Third tab: Recycling Check Tool
                    NavigationView {
                        RecyclingCheck()
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Recycling Check")
                            .font(.custom("League Spartan", size: 14))
                    }
                }
                // Set the color of the selected tab
                .accentColor(Color(red: 44/255, green: 107/255, blue: 95/255))
            }
        }
        // Simulate a loading delay and then show the main content
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isLoading = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the content view
        ContentView()
    }
}
