//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/27/21.
//

import SwiftUI

struct LandmarkCommands: Commands {
    var body: some Commands {
            SidebarCommands()
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}


extension FocusedValues {
    var selectedaLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
