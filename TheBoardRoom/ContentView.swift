//
//  ContentView.swift
//  TinTin
//
//  Created by Malachi  on 2/17/25.
//

import SwiftUI


var debug = false

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                VStack{
                    Spacer()
                    NavigationLink(destination: Login()) {
                        Text("Login")
                    }
                        .frame(maxWidth: .infinity) // Makes the button full width
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    NavigationLink(destination: SignUp()) {
                        Text("Signup")
                    }
                    .frame(maxWidth: .infinity) // Makes the button full width
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
                .padding()
                .padding(.horizontal)
                .padding(.bottom, 5.0)
            }
            .background(
                Image("1")
            )
        }
    }
}

#Preview {
    ContentView()
}

