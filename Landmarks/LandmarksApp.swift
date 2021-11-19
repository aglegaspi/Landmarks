//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/18/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
