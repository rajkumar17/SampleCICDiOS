//
//  AppDelegate.swift
//  RetirementCalcu
//
//  Created by Rajkumar on 22/06/22.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
class AppDelegate: UIResponder, UIApplicationDelegate, CrashesDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Crashes.delegate = self
        AppCenter.start(withAppSecret: "9104648d-9032-412d-b316-d577d8b1910f", services: [ Analytics.self, Crashes.self ])
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func crashes(_ crashes: Crashes, shouldProcess errorReport: ErrorReport) -> Bool {
      return true; // return true if the crash report should be processed, otherwise false.
    }

}

