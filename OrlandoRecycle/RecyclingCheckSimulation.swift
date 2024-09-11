import SwiftUI

struct RecyclingCheckSimulation: View {
    // Callback to pass the scanned result back
    var completion: (String?) -> Void
    // Green color used for styling
    private let customGreen = Color(red: 44/255, green: 107/255, blue: 95/255)

    var body: some View {
        ZStack {
            // Background color
            customGreen.opacity(0.5)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                // Message showing a simulated recycling result
                Text("The box of Honey Nut Cheerios is recyclable!")
                    .font(.custom("Poppins-Bold", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()

                // Button to pretend to scan another item (no action yet)
                Button("Scan Another Item") {
                    // Future functionality can be added here
                }
                .padding()
                .background(customGreen)
                .foregroundColor(.white)
                .cornerRadius(8)
                .font(.custom("Poppins-Bold", size: 16))

                // Button to exit the simulation and return to the main screen
                Button("Exit") {
                    completion(nil)  // Notifies that the user wants to exit
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                .font(.custom("Poppins-Bold", size: 16))
            }
            .padding()
        }
    }
}

#Preview {
    RecyclingCheckSimulation { _ in }
}
