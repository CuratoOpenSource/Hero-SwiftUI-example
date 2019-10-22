//
//  ViewController.swift
//  HeroUIPoc
//
//  Created by menno on 22/10/2019.
//  Copyright © 2019 MonoLofi. All rights reserved.
//

import UIKit
import Hero

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hero.isEnabled = true
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                         action: #selector(didTapBackground)))
    }
    
    @objc func didTapBackground() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "B")
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true, completion: nil)
        
    }
}

