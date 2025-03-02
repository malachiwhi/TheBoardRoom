//
//  SignIn.swift
//  TinTin
//
//  Created by Malachi  on 2/26/25.
//

import SwiftUI

struct Login: View {
    
    // Add more rubust States and Observables
    
    @State private var email: String = "";
    @State private var password: String = "";
    @State private var IsLoggedIn: Bool = false;
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .padding()
                TextField("Email", text: $email)
                SecureField("Password", text:$password)
                Button(action: {
                    IsLoggedIn.toggle()
                }) {
                    Text("Login")
                }
                .frame(maxWidth: .infinity) // Makes the button full width
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(30)
            }
            
        }
        .padding()
        .padding(.horizontal)
        .padding(.bottom, 5.0)
    }
}

#Preview {
    Login()
}

