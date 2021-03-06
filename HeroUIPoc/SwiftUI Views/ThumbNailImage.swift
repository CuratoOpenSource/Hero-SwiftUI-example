//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import SwiftUI

struct ThumbNailImage: View, UIViewRepresentable {
    
    let name: String
    let isHeroEnabled: Bool
    
    func makeUIView(context: UIViewRepresentableContext<ThumbNailImage>) -> UIImageView {
        UIImageView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIImageView, context: UIViewRepresentableContext<ThumbNailImage>) {
        uiView.image = UIImage(named: name)
        uiView.contentMode = .scaleAspectFit
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
