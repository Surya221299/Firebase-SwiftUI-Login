//
//  ContentView.swift
//  Litmatch-Clone-SwiftUI
//
//  Created by Bamantara S on 07/09/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
        if logStatus {
            // MARK: YOUR HOME VIEW
            DemoHome()
        }else {
            Login()
        }
    }
    
    @ViewBuilder
    func DemoHome()-> some View {
        NavigationStack {
            Text("Logged in")
                .navigationTitle("Multi-Login")
                .toolbar{
                    ToolbarItem{
                        Button("Logout"){
                            try? Auth.auth().signOut()
                            GIDSignIn.sharedInstance.signOut()
                            withAnimation(.easeInOut){
                                logStatus = false
                            }
                        }
                    }
                }
        }
    }
}

