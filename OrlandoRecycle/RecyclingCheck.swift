import SwiftUI

struct RecyclingCheck: View {
    
    // State variables to store the item name, recyclability result, and scanned text
    @State private var itemName: String = ""
    @State private var isRecyclable: String = ""
    @State private var showingScanner = false
    @State private var scannedText: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                // Background color with reduced opacity
                Color(red: 44/255, green: 107/255, blue: 95/255)
                    .opacity(0.5)
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .center, spacing: 20) {
                        // App title
                        Text("RecycleOrlando")
                            .font(.custom("League Spartan", size: 34))
                            .fontWeight(.bold)
                            .padding(.top, 10)
                            .padding(.bottom, 20)

                        // Text field for user to enter an item name
                        TextField("Enter item name", text: $itemName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()

                        // Button to check if the entered item is recyclable
                        Button(action: checkRecyclability) {
                            Text("Check")
                                .padding()
                                .background(Color(red: 44/255, green: 107/255, blue: 95/255))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .font(.custom("Poppins-Bold", size: 16))
                        }

                        // Text indicating the alternative option to scan an item
                        Text("OR")
                            .font(.custom("Poppins-Bold", size: 16))
                            .padding(.vertical)

                        // Button to initiate item scanning
                        Button(action: {
                            showingScanner = true
                        }) {
                            Text("Scan Item")
                                .padding()
                                .background(Color(red: 44/255, green: 107/255, blue: 95/255))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .font(.custom("Poppins-Bold", size: 16))
                        }
                        .sheet(isPresented: $showingScanner) {
                            // Simulation of scanning process
                            RecyclingCheckSimulation { result in
                                if let scannedText = result {
                                    self.scannedText = scannedText
                                    checkRecyclability()  // Check recyclability after scanning
                                }
                                showingScanner = false
                            }
                        }

                        // Display the recyclability result
                        Text(isRecyclable)
                            .padding()
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                }
            }
        }
    }

    // Function to check if the entered or scanned item is recyclable
    private func checkRecyclability() {
        // List of recyclable items
        let recyclableItems = [
            "Plastic", "Glass", "Metal", "Cardboard", "Paper",
            "Water Bottle", "Soda Can", "Milk Carton", "Newspaper"
        ]

        // Use the scanned text if available; otherwise, use the item name
        let itemToCheck = !scannedText.isEmpty ? scannedText : itemName

        // Determine if the item can be recycled and update the result text
        if itemToCheck.isEmpty {
            isRecyclable = "Please enter or scan an item."
        } else if recyclableItems.contains(itemToCheck) {
            isRecyclable = "\(itemToCheck) can be recycled."
        } else {
            isRecyclable = "\(itemToCheck) cannot be recycled."
        }
    }
}

#Preview {
    RecyclingCheck()  // Preview the Recycling Check view
}
