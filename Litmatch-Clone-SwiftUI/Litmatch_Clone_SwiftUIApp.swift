//
//  Litmatch_Clone_SwiftUIApp.swift
//  Litmatch-Clone-SwiftUI
//
//  Created by Bamantara S on 07/09/23.
//

import SwiftUI
import Firebase
import FacebookLogin
import FBSDKCoreKit

// MARK: Initializing Firebase
class AppDelegate: NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        FBSDKCoreKit.ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        return true
    }
    
    // MARK: Phone Auth Needs to Initialize Remote Notificatios
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) async -> UIBackgroundFetchResult {
        return .noData
    }
    // MARK: For Facebook Login
    func application(_ app: UIApplication,
                         open url: URL,
                         options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            return ApplicationDelegate.shared.application(app, open: url, options: options)
        }
}

@main
struct Litmatch_Clone_SwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //MARK: For Facebook Login
                .onAppear(){
                    ApplicationDelegate.shared.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
                }
        }
    }
}
