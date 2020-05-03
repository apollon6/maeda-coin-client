//
//  PhoneNumberAuthenicationViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class PhoneNumberAuthenicationViewController: UIViewController {
    
    var authenicationId: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /* 認証して完了ボタン押下時のアクション */
    @IBAction func pushComplete(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "アラート表示", message: "ユーザー登録が完了しました。", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
            let loginViewController = self.storyboard!.instantiateViewController(withIdentifier: "LoginViewController")
            self.show(loginViewController, sender: nil)
           }
        )
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
}
