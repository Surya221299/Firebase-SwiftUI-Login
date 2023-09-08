//
//  Login.swift
//  Litmatch-Clone-SwiftUI
//
//  Created by Bamantara S on 07/09/23.
//

import SwiftUI
import AuthenticationServices
import GoogleSignIn
import GoogleSignInSwift
import Firebase

struct Login: View {
    
    @StateObject var loginModel: LoginViewModel = .init()
    
    var body: some View {
        VStack() {
            VStack {
                Image("splash_icon_new")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 0.4)
            }
            .frame(height: UIScreen.main.bounds.height * 0.5)
            
            VStack(spacing: 15) {
                CustomFacebookButton()
                    .overlay(
                        LoginFacebook()
                            .frame(height: UIScreen.main.bounds.height * 0.065)
                            .frame(maxWidth: .infinity)
                            .opacity(0.02)
                    )
                // MARK: Custom Apple Sign in Button
                
                CustomAppleButton()
                    .overlay {
                        SignInWithAppleButton { (request) in
                            // requesting parameters from apple login...
                            loginModel.nonce = randomNonceString()
                            request.requestedScopes = [.email,.fullName]
                            request.nonce = sha256(loginModel.nonce)
                        } onCompletion: { (result) in
                            // Getting Error or Success...
                            switch result {
                            case .success(let user):
                                print("success")
                                // do Login With Firebase...
                                guard let credential = user.credential as? ASAuthorizationAppleIDCredential else {
                                    print("error with firebase")
                                    return
                                }
                                loginModel.appleAuthenticate(credential: credential)
                                
                            case .failure(let error):
                                print(error.localizedDescription)
                            }
                        }
                        .signInWithAppleButtonStyle(.black)
                        .frame(height: 55)
                        .blendMode(.overlay)
                    }
                HStack {
                        Rectangle().fill(Color.black.opacity(0.35)).frame(width: 33, height: 1, alignment: .center)
                        Text("atau")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(.black.opacity(0.35))
                            .padding(10)
                        Rectangle().fill(Color.black.opacity(0.35)).frame(width: 33, height: 1, alignment: .center)
                    }
                // MARK: Custom Google Sign in Button
                
                CustomGoogleButton()
                    .overlay {
                        // MARK: We Have Native Google Sign in Button
                        // It's Simple to Integrate Now
                        if let clientID = FirebaseApp.app()?.options.clientID{
                            GoogleSignInButton{
                                GIDSignIn.sharedInstance.signIn(with: .init(clientID: clientID),presenting: UIApplication.shared.rootController()){
                                    user, error in
                                    if let error = error{
                                        print(error.localizedDescription)
                                        return
                                    }
                                    
                                    // MARK: Logging Google User into Firebase
                                    if let user{
                                        loginModel.logGoogleUser(user: user)
                                    }
                                }
                            }
                            .blendMode(.overlay)
                            .opacity(0.1)
                        }
                    }
                Spacer()
                Text("Melanjutkan pendaftaran berarti kamu telah \n membaca dan mengakui [Ketentuan Penggunaan](https://litmatchapp.com/#/service-terms), \n [Kebijakan Privasi](https://litmatchapp.com/#/privacy-policy), dan [Kebijakan Cookies.](https://litmatchapp.com/#/cookie-policy)")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black.opacity(0.35))
                Spacer()
            }
            .frame(height: UIScreen.main.bounds.height * 0.5)
            .alert(loginModel.errorMessage, isPresented: $loginModel.showError) {
                    
            }
        }
    }
    @ViewBuilder
    func CustomGoogleButton() -> some View {
        HStack {
            Spacer()
            Image("google")
                .frame(width: 48 , height: 48, alignment: .top)
            Spacer()
        }
        
    }
    
    func CustomAppleButton() -> some View {
        HStack {
            Image("apple")
                .offset(x: 24, y: -1)
            Text("Continue with Apple")
                .font(.custom("Inter-SemiBold", size: 16))
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            Image("apple")
                .hidden()
        }
        .frame(height: UIScreen.main.bounds.height * 0.065)
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(Color.black)
        .cornerRadius(.infinity)
        .padding(.horizontal, UIScreen.main.bounds.width * 0.133)
    }
    
    func CustomFacebookButton() -> some View {
        HStack {
            Image("facebook")
                .offset(x: 24, y: -1)
            Text("Facebook")
                .font(.custom("Inter-SemiBold", size: 16))
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            Image("facebook")
                .hidden()
        }
        .frame(height: UIScreen.main.bounds.height * 0.065)
        .frame(maxWidth: .infinity)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(.infinity)
        .padding(.horizontal, UIScreen.main.bounds.width * 0.133)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
