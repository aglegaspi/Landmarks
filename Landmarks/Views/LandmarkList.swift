//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/18/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite )
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        
//        ForEach(["iPhone 13", "iPhone 8"], id: \.self) { device in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: device))
//        }
    
    }
}
