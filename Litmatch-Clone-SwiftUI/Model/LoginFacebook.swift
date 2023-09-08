//
//  LoginFacebook.swift
//  Litmatch-Clone-SwiftUI
//
//  Created by Bamantara S on 07/09/23.
//

import SwiftUI
import FBSDKLoginKit
import FacebookLogin
import Firebase

struct LoginFacebook: UIViewRepresentable {
    
    func makeCoordinator() -> LoginFacebook.Coordinator {
        return LoginFacebook.Coordinator()
    }
    
    func makeUIView(context: Context) -> FBLoginButton {
        let button = FBLoginButton()
        button.delegate = context.coordinator
        button.permissions = ["email"]
        return button
    }
  
    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<LoginFacebook>) {
        
    }
    
    class Coordinator: NSObject, LoginButtonDelegate {
        
        // MARK: App Log Status
        @AppStorage("log_status") var logStatus: Bool = false
//        @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
//        @State var creation = false
        
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if error != nil {
                print((error?.localizedDescription)!)
                return
            }
            
            if AccessToken.current != nil {
                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                Auth.auth().signIn(with: credential) { (res, er) in
                    
                    if er != nil{
                        print((er?.localizedDescription)!)
                        return
                    }
                    print("successs")
                    withAnimation(.easeInOut){self.logStatus = true}
                }
            }
        }
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            try! Auth.auth().signOut()
        }
    }
}

