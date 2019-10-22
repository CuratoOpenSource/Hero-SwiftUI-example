//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import UIKit
import Hero

class UIKitDestinationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hero.isEnabled = true
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                         action: #selector(didTapBackground)))
    }
    
    @objc func didTapBackground() {
        dismiss(animated: true, completion: nil)
    }
}

