//
//  TopViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet weak var nicknameLabel: UILabel!
    
    @IBOutlet weak var balanceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        /* Top画面では戻るボタンを表示しないように制御 */
        self.navigationItem.hidesBackButton = true
        
        /* 残高照会APIを呼び出し */
        nicknameLabel.text = "ニックネーム さん"
        balanceLabel.text = "10,000 コイン"
        
        let loginUser = LoginUser.instance
        guard let userId = loginUser.userId else { return }
        print(userId)
    }
    
    @IBAction func pushLogout(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "ログアウト確認", message: "ログアウトします。", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
            self.navigationController?.popToRootViewController(animated: true)
        })
        let cancelAction = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
