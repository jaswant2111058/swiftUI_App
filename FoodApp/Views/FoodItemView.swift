import SwiftUI

struct FoodItemView: View {
    let foodItem: FoodItem
    
    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0 to control layout precisely
            VStack {
                AsyncImage(url: URL(string: "https://foodserver-c5lx.onrender.com/img/\(foodItem.img)")) { image in
                    image
                        .resizable()
                        
                        .frame(width: 140, height: 140)
                        .cornerRadius(15)
                } placeholder: {
                    ProgressView()
                }
                
                Spacer()
                
                Text(foodItem.itemName)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Spacer()
                HStack {
                    
                    Text("$\(foodItem.price) +")
                        .font(.title3.bold())
                    
                    Text("35% OFF")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                }
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 8)
        }
        .padding(.bottom, 15)
    }
}
