//
//  SwiftUISourceViewController.swift
//  HeroUIPoc
//
//  Created by menno on 22/10/2019.
//  Copyright © 2019 MonoLofi. All rights reserved.
//

import SwiftUI
import UIKit

class SwiftUISourceViewController: UIHostingController<ViewWithImage> {
    
    required init() {
        super.init(rootView: ViewWithImage())
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        super.init(rootView: ViewWithImage())
    }
}
