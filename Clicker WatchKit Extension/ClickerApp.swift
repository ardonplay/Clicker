//
//  ClickerApp.swift
//  Clicker WatchKit Extension
//
//  Created by Vladimir Moshchuk on 14.04.22.
//

import SwiftUI

@main
struct ClickerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
