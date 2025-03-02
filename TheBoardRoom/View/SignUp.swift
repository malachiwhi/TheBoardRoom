import SwiftUI

struct SignUp: View {
    @State private var email: String = "";
    @State private var password: String = "";
    @State private var IsLoggedIn: Bool = false;
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                VStack {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    TextField("Email", text: $email)
                        
                    SecureField("Password", text:$password)
                    NavigationLink (destination: SignUp()){
                        Button(action: {
                            IsLoggedIn.toggle()
                        }) {
                            Text("SignUp")
                        }
                        .frame(maxWidth: .infinity) // Makes the button full width
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                    }
                }
                
            }
        }
        .padding()
        .padding(.horizontal)
        .padding(.bottom, 5.0)
    }}

#Preview {
    SignUp()
}
