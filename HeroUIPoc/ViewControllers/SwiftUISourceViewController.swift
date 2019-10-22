//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import SwiftUI
import UIKit

class SwiftUISourceViewController: UIHostingController<ImagesTableView> {

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        
        super.init(rootView: ImagesTableView())
        
        tabBarItem = UITabBarItem(title: "SwiftUi",
                                  image: UIImage(systemName: "photo"),
                                  selectedImage: UIImage(systemName: "photo.fill"))

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.onTap = {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "B")
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true, completion: nil)
        }
    }
}

