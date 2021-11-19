//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Alex 6.1 on 11/19/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        
        FavoriteButton(isSet: .constant(true))
    }
}
