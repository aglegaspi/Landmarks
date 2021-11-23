//
//  ContentView.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured, list
    }
    
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
