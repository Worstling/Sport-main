//
//  SceneDelegate.swift
//  Sport
//
//  Created by User on 18.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let WindowScene = (scene as? UIWindowScene) else { return }
        window =  UIWindow(windowScene: WindowScene)
        window?.rootViewController = StatisticViewController()
        window?.makeKeyAndVisible()
    }

}

