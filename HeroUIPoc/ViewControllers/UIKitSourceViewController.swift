//
//  Copyright © 2019 Curato Research BV. All rights reserved.
//

import UIKit
import Hero

class UIKitSourceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                         action: #selector(didTapBackground)))
    }
    
    @objc func didTapBackground() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "B")
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true, completion: nil)
        
    }
}

