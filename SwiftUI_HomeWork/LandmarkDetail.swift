//
//  LandmarkDetail.swift
//  SwiftUI_HomeWork
//
//  Created by Grigor Aghabalyan on 5/14/20.
//  Copyright © 2020 aghabalyan. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -110)
                    .padding(.bottom, -110)
                
                VStack(alignment: .center) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                    }
                    
                    VStack(alignment: .center) {
                        Text(landmark.state)
                            .font(.subheadline)
                        Text(landmark.city)
                            .font(.subheadline)
                    }
                    
                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
        }
        
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
        
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}
