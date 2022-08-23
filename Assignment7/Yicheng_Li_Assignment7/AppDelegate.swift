//
//  AppDelegate.swift
//  Yicheng_Li_Assignment7
//
//  Created by mac on 2021/2/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var fav_1:String!;
    var fav_2:String!;
    var fav_3:String!;
    var fav_4:String!;
    var channel_1:Int!;
    var channel_2:Int!;
    var channel_3:Int!;
    var channel_4:Int!;
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        fav_1 = "ABC";
        fav_2 = "NBC";
        fav_3 = "CBC";
        fav_4 = "FOX";
        channel_1 = 50;
        channel_2 = 75;
        channel_3 = 99;
        channel_4 = 25;
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


}

