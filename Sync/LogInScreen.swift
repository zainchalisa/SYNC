//
//  ContentView.swift
//  Sync (First IOS App)
//
// Social Media Music App
//
//  Created by Zain Chalisa on 6/23/22.
//

import SwiftUI

struct LogInScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float = 0
    @State private var showLoginScreen = false

    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.35))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Sign In")
                        .font(.largeTitle)
                        .bold() // must come before you add padding
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        // Code to Authenticate the User
                        authenticateUser(username: username, password: password)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: FeedScreen(), isActive: $showLoginScreen) {
                        EmptyView()
                    
                    }
                }
                .navigationBarHidden(true)
        }
    }
}
        
        func authenticateUser(username: String, password: String) {
            if username.lowercased() == "zchalisa" {
                wrongUsername = 0
                if password.lowercased() == "ilikepie123"{
                    wrongPassword = 0
                    showLoginScreen = true
                } else{
                    wrongPassword = 2;
                }
            } else{
                wrongUsername = 2;
            }
        }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LogInScreen()
                .previewDevice("iPhone 13 Pro")
            LogInScreen()
                .previewDevice("iPhone 13 Pro")
        }
    }
}

