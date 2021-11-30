//
//  LandmarkSettingss.swift
//  MacLandmarks
//
//  Created by Alex 6.1 on 11/30/21.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("Mapview.zoom")
    private var zoom: MapView.Zoom = .medium
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
