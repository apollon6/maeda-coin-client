//
//  LoginViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* ログイン画面では戻るボタンを表示しないように制御 */
        self.navigationItem.hidesBackButton = true
    }
    
    /* ログインボタン押下時のアクション */
    @IBAction func pushLogin(_ sender: Any) {
        let topViewController = self.storyboard!.instantiateViewController(withIdentifier: "TopViewController")
        self.show(topViewController, sender: nil)
    }
    
}
