//
//  ViewWithImage.swift
//  HeroUIPoc
//
//  Created by menno on 22/10/2019.
//  Copyright © 2019 MonoLofi. All rights reserved.
//

import SwiftUI


struct ThumbNailImage: View, UIViewRepresentable {
    
    let name: String
    
    func makeUIView(context: UIViewRepresentableContext<ThumbNailImage>) -> UIImageView {
        UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    func updateUIView(_ uiView: UIImageView, context: UIViewRepresentableContext<ThumbNailImage>) {
        uiView.image = UIImage(named: name)
        uiView.contentMode = .scaleAspectFit
        uiView.sizeThatFits(.init(width: 100, height: 100))
        uiView.hero.isEnabled = true
        uiView.hero.id = "CatalinaImage"
    }
}

struct ViewWithImage: View {
    
    var onTap: (()->())?
    let images = (0...100).map{ IdentifyableImage(id: $0, name: "ThumbCatalina") }
    
    var body: some View {
        List(images) { image in
            
            HStack {
                ThumbNailImage(name: image.name).allowsTightening(true).frame(width: 100, height: 100, alignment: .center)
                Text(image.name)
            }.onTapGesture {
                self.onTap?()
            }
        }
    }
}

struct ViewWithImage_Previews: PreviewProvider {
    static var previews: some View {
        ViewWithImage(onTap: nil)
    }
}

struct IdentifyableImage: Identifiable {
    
    let id: Int
    
    let name: String
}
