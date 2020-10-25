//
//  AppDelegate.swift
//  SchwiftyPagination
//
//  Created by Darkhonbek Mamataliev on 10/25/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = CharactersViewController()
        window?.makeKeyAndVisible()

        return true
    }
}
