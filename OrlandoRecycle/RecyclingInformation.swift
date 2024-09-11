import SwiftUI

struct RecyclingInformation: View {
    
    // Custom green color used throughout the view
    private let customGreen = Color(red: 44/255, green: 107/255, blue: 95/255)

    var body: some View {
        NavigationView {
            ZStack {
                // Background color with reduced opacity
                customGreen.opacity(0.5)
                    .ignoresSafeArea()
                
                // Scrollable content
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        // Title of the page
                        Text("RecycleOrlando")
                            .font(.custom("League Spartan", size: 34))
                            .fontWeight(.bold)
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            // Section title: Recycling Information
                            Text("Recycling Information")
                                .font(.custom("League Spartan", size: 24))
                                .fontWeight(.semibold)
                                .padding(.bottom, 10)
                            
                            // Introduction to the importance of recycling
                            Text("Recycling is crucial for protecting our environment and conserving natural resources. By recycling, you help reduce the amount of waste in landfills, decrease pollution, and save energy. Here’s how you can contribute effectively:")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            // Subsection: What to Recycle
                            Text("What to Recycle:")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.bottom, 5)
                            
                            // List of recyclable materials with instructions
                            Text("1. **Plastic**: Rinse thoroughly and sort by type. Avoid contamination with food or other materials.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("2. **Paper**: Keep it clean and dry. Remove any non-paper materials like plastic or metal.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("3. **Glass**: Clean and sort by color (clear, green, brown). Check local guidelines for specific rules.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("4. **Metal**: Rinse and remove labels. Contact local facilities for proper sorting procedures.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            // Subsection: How to Recycle
                            Text("How to Recycle:")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.top, 10)
                                .padding(.bottom, 5)
                            
                            // List of recycling practices
                            Text("1. **Check Local Guidelines**: Each city may have different recycling rules and procedures. Make sure to follow Orlando’s guidelines.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("2. **Sort and Clean**: Ensure that recyclables are clean and sorted according to your local recycling program.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("3. **Use Proper Bins**: Place your recyclables in designated bins to help streamline the recycling process.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("4. **Avoid Contamination**: Contaminated items can spoil an entire batch of recyclables. Make sure your items are clean and free of food waste.")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Spacer()
                            
                            // Link to more recycling information
                            Link("For more information, visit the City of Orlando's Recycling Guide", destination: URL(string: "https://www.orlando.gov/Trash-Recycling/What-Goes-Where")!)
                                .font(.custom("League Spartan", size: 16))
                                .padding()
                                .foregroundColor(.blue)
                                .underline()
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct RecyclingInformation_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the Recycling Information view
        RecyclingInformation()
    }
}

