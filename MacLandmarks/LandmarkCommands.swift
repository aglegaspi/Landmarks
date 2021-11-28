//
//  LandmarkCommands.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/27/21.
//

import SwiftUI

struct LandmarkCommands: Commands {
    private struct MenuContent: View {
        @FocusedBinding(\.selectedLandmark) var selectedLandmark
        
        var body: some View {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?isFavorite.toggle()
            }
            .disabled(selectedLandmark == nil)
        }
    }
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
