
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = FoodViewModel()
    @State private var inputText: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [AppColor.white.color, AppColor.white.color]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    
                    
                    
                    
                    ScrollView {
                        VStack(spacing: 15) {
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)) {
                                ForEach(viewModel.foodItems) { item in
                                    FoodItemView(foodItem: item)
                                }
                            }
                            .padding()
                        }
                        
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
