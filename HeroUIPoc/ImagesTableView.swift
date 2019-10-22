//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import SwiftUI

struct ImagesTableView: View {
    
    var onTap: (()->())?
    
    @State var images = (0...100).map{ IdentifyableImage(id: $0, name: "ThumbCatalina") }
    
    var body: some View {
        List(images) { image in
            
            HStack {
                ThumbNailImage(name: image.name, isHeroEnabled: image.isHeroEnabled).frame(width: 100,
                                                                                           height: 100,
                                                                                           alignment: .center)
                Text(image.name)
            }.onTapGesture {
                self.enableHeroExclusivelyForImage(atIndex: image.id)
                
                self.onTap?()
            }
        }
    }
    
    func enableHeroExclusivelyForImage(atIndex indexOfImageWithHeroEnabled: Int) {
        
        (0..<images.count).forEach { (currentIndex) in
            
            self.images[currentIndex].isHeroEnabled = currentIndex == indexOfImageWithHeroEnabled
        }
    }
}

#if DEBUG
struct ImagesTableView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesTableView(onTap: nil)
    }
}
#endif

struct IdentifyableImage: Identifiable {
    
    let id: Int
    
    let name: String
    
    var isHeroEnabled: Bool = false
}
