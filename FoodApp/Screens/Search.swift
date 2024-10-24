import SwiftUI

struct SearchView: View {
    
    @State var inputText: String = ""
    
    var body : some View {
        
        ZStack {
           
            VStack{
                HStack(spacing: 0) {
                    Spacer()

                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24))
                        .foregroundColor(.gray)
                    
                    TextField("Enter something...", text: $inputText)
                        .padding(.vertical)
                }
                .background(Color.gray.opacity(0.2))
                .cornerRadius(25)
                .padding()
            }
            
        }
        
    }

    
}
