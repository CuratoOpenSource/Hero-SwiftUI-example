//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import SwiftUI
import UIKit

class SwiftUISourceViewController: UIHostingController<ImagesTableView> {

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        
        super.init(rootView: ImagesTableView())
        
        rootView.onTap = {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "B")
            vc.modalPresentationStyle = .fullScreen
            
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hero.isEnabled = true
    }
}

