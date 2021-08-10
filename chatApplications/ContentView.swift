//
//  ContentView.swift
//  chatApplications
//
//  Created by Tal Turjeman on 10/08/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var sessionStore = SessionStore()
    init() {
            sessionStore.listen()
        }

    var body: some View {
        ChatList()
                .fullScreenCover(isPresented: $sessionStore.isAnon, content: {
                       Login()
                   })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
