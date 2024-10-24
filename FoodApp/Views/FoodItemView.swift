import SwiftUI

struct FoodItemView: View {
    let foodItem: FoodItem
    
    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0 to control layout precisely
            VStack {
                AsyncImage(url: URL(string: "https://foodserver-c5lx.onrender.com/img/\(foodItem.img)")) { image in
                    image
                        .resizable()
                        .frame(width: 150, height: 140)
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
                HStack{
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        // Button label
                        Text("View Deails")
                            .font(.title3.bold())
                            .padding(.horizontal, 5)
                            .padding(.vertical, 5)
                            .background(AppColor.primary.color)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    
                    Image(systemName: "heart") // Heart icon from SF Symbols
                        .foregroundColor(AppColor.shadeThree.color)
                                   
                    
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 8)
        }
        .padding(.bottom, 15)
    }
}
