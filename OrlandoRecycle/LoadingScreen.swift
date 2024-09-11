import SwiftUI

struct LoadingScreen: View {
    // State variable to track if the loading screen is active
    @State private var isLoading = true

    var body: some View {
        ZStack {
            // Background color
            Color.white.ignoresSafeArea()
            
            // Display the app logo
            Image("RecycleOrlando")
                .resizable()
                .scaledToFit()
                .frame(width: 955, height: 955)

            // Show empty view while loading
            if isLoading {
                EmptyView()
                    .onAppear {
                        // Simulate a 3-second loading delay
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            isLoading = false
                        }
                    }
            } else {
                // Transition to the main content view after loading
                ContentView()
                    .transition(.opacity)
            }
        }
    }
}

struct LoadingScreen_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the loading screen
        LoadingScreen()
    }
}
