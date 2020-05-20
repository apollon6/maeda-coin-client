//
//  LoginViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit
import PromiseKit
import LocalAuthentication

class LoginViewController: UIViewController {
    
    /* ログインボタン */
    @IBOutlet weak var loginButton: UIButton!

    /* ユーザー登録ボタン*/
    @IBOutlet weak var registerUserButton: UIButton!
    
    /* ユーザーID */
    @IBOutlet weak var userId: UITextField!
    /* ログインパスワード */
    @IBOutlet weak var loginPassword: UITextField!
    
    let frontAPICaller: FrontAPICaller = FrontAPICaller()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* ログイン画面では戻るボタンを表示しないように制御 */
        self.navigationItem.hidesBackButton = true
        
        /* ログインボタンに影を設定 */
        loginButton.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.4
        
        /* ユーザー登録ボタンに影を設定 */
        registerUserButton.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        registerUserButton.layer.shadowColor = UIColor.black.cgColor
        registerUserButton.layer.shadowOpacity = 0.4
    }
    
    /* ログインボタン押下時のアクション */
    @IBAction func pushLogin(_ sender: Any) {
        /* ログイン実行APIを呼び出し */
        
        let loginUser = LoginUser.instance
        loginUser.userId = self.userId.text
        
        let topViewController = self.storyboard!.instantiateViewController(withIdentifier: "TopViewController")
        self.show(topViewController, sender: nil)
    }
    
    /* TextField以外の部分を押した時にキーボードを閉じる */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
