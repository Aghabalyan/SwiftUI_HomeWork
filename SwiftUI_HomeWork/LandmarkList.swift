//
//  LandmarkList.swift
//  SwiftUI_HomeWork
//
//  Created by Grigor Aghabalyan on 5/14/20.
//  Copyright © 2020 aghabalyan. All rights reserved.
//


import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("հայաստանի տեսարժան վայրերը"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
