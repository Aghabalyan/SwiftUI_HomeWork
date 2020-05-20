//
//  CircleImage.swift
//  SwiftUI_HomeWork
//
//  Created by Grigor Aghabalyan on 5/14/20.
//  Copyright © 2020 aghabalyan. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        
        image.resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Տաթևի_վանք"))
    }
}
