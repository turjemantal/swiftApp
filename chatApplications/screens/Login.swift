//
//  Login.swift
//  chatApplications
//
//  Created by Tal Turjeman on 10/08/2021.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    @ObservedObject var sessionSession = SessionStore()
    
    
    var body: some View {
       NavigationView {
            VStack {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    sessionSession.signIn(email: email, password: password)
                },label:{
                    Text("Login")
                })
                
                Button(action: {
                    sessionSession.signUp(email: email, password: password)
                },label:{
                    Text("sign up")
                })
            }
            .padding(.horizontal)
            .navigationBarTitle("Welcome")
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
