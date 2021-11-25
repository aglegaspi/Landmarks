//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Alex 6.1 on 11/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
