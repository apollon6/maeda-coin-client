//
//  NavigationViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "HiraginoSans-W6", size: 16)!, NSAttributedString.Key.foregroundColor: UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)]
    }
}
