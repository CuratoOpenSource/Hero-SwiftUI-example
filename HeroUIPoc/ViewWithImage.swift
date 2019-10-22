//
//  ViewWithImage.swift
//  HeroUIPoc
//
//  Created by menno on 22/10/2019.
//  Copyright © 2019 MonoLofi. All rights reserved.
//

import SwiftUI

struct ViewWithImage: View {
    
    let images = (0...100).map{ IdentifyableImage(id: $0, name: "Catalina") }
    
    var body: some View {
        List(images) { image in
            
            HStack {
                Image(image.name).resizable().frame(width: 100, height: 100, alignment: .center)
                Text(image.name)
            }
        }
    }
}

struct ViewWithImage_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithImage()
    }
}

struct IdentifyableImage: Identifiable {
    
    let id: Int
    
    let name: String
}
