import SwiftUI

struct LoginView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [AppColor.primary.color, AppColor.white.color]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Image("login1")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.6)
                            .cornerRadius(20)
                        
                        VStack {
                            Image("login2")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.3)
                                .cornerRadius(20)
                            
                            Image("login3")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.29)
                                .cornerRadius(20)
                        }
                    }
                    
                    Text("Welcome to Food Break!")
                        .font(.title)
                        .padding()
                    
                    NavigationLink(destination: HomeView()) {
                        HStack {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .padding()
                            
                            Text("Continue with Google")
                                .font(.title)
                        }
                        .frame(maxWidth: .infinity)
                        .background(AppColor.secondary.color)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding(1)
                    }
                    
                }
                .padding()
            }
        }
    }
}

