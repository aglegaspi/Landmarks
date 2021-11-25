//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Alex 6.1 on 11/25/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
