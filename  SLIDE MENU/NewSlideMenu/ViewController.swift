//
//  ViewController.swift
//  NewSlideMenu
//
//  Created by Parmarth Mori on 29/01/19.
//  Copyright © 2019 Parmarth Mori. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSlideMenuButton()
        // ***** If u want to Action that menu on button than do this
        
        // buttonOutlet.addTarget(self, action: #selector(BaseViewController.onSlideMenuButtonPressed(_:)), for: UIControlEvents.touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

