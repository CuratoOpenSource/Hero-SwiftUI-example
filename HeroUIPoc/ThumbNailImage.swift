//
//  ThumbNailImage.swift
//  HeroUIPoc
//
//  Created by menno on 22/10/2019.
//  Copyright © 2019 MonoLofi. All rights reserved.
//

import SwiftUI

struct ThumbNailImage: View, UIViewRepresentable {
    
    let name: String
    let isHeroEnabled: Bool
    
    func makeUIView(context: UIViewRepresentableContext<ThumbNailImage>) -> UIImageView {
        UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }
    
    func updateUIView(_ uiView: UIImageView, context: UIViewRepresentableContext<ThumbNailImage>) {
        uiView.image = UIImage(named: name)
        uiView.contentMode = .scaleAspectFit
        uiView.sizeThatFits(.init(width: 100, height: 100))
        uiView.hero.isEnabled = true
        uiView.hero.id = isHeroEnabled ? "CatalinaImage" : nil
    }
}

#if DEBUG
struct ThumbNailImage_Previews: PreviewProvider {
    static var previews: some View {
        ThumbNailImage(name: "Catalina", isHeroEnabled: false)
    }
}
#endif
