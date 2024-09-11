import SwiftUI

struct FindCenters: View {
    
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
                            // Section title: Orlando Recycling Centers
                            Text("Orlando Recycling Centers")
                                .font(.custom("League Spartan", size: 24))
                                .fontWeight(.semibold)
                                .padding(.bottom, 10)
                            
                            // List of recycling centers with addresses and accepted materials
                            Text("1. Solid Waste Management Division")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.bottom, 5)
                            Text("1028 South Woods Avenue, Orlando, FL")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Accepts: Plastic, Paper, Glass, Metal, Electronics")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("2. Northwest Community Center")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.bottom, 5)
                            Text("3955 WD Judge Road, Orlando, FL")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Accepts: Plastic, Paper, Glass, Metal")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("3. Engelwood Neighborhood Center")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.bottom, 5)
                            Text("6123 Lacosta Drive, Orlando, FL")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Accepts: Plastic, Paper, Glass, Metal")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Text("4. Dover Shore Community Center")
                                .font(.custom("League Spartan", size: 18))
                                .padding(.bottom, 5)
                            Text("1400 Gaston Foster Road, Orlando, FL")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Accepts: Plastic, Paper, Glass, Metal")
                                .font(.custom("League Spartan", size: 16))
                                .fixedSize(horizontal: false, vertical: true)
                            
                            Spacer()
                            
                            // Link to more information about recycling in Orlando
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

struct FindCenters_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the Find Centers view
        FindCenters()
    }
}
