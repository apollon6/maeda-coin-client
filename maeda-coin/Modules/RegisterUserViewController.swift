//
//  RegisterUserViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {
    
    /* 登録ボタン */
    @IBOutlet weak var registerButton: UIButton!
    
    /* ログインID */
    @IBOutlet weak var userId: UITextField!
    /* ログインパスワード */
    @IBOutlet weak var loginPassword: UITextField!
    /* ニックネーム */
    @IBOutlet weak var nickname: UITextField!
    /* メールアドレス */
    @IBOutlet weak var mailAddress: UITextField!
    /* 電話番号 */
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* 登録ボタンに影を設定 */
        registerButton.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        registerButton.layer.shadowColor = UIColor.black.cgColor
        registerButton.layer.shadowOpacity = 0.4
    }
    
    @IBAction func pushRegister(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* 遷移先のViewControllerを取得 */
        guard let nextView = segue.destination as? PhoneNumberAuthenicationViewController else { return }
        /* 次画面に入力情報を受け渡し */
        nextView.registerUserInformation.userId = self.userId.text
        nextView.registerUserInformation.loginPassword = self.loginPassword.text
        nextView.registerUserInformation.nickname = self.nickname.text
        nextView.registerUserInformation.mailAddress = self.mailAddress.text
        nextView.registerUserInformation.phoneNumber = self.phoneNumber.text
    }
    
    /* TextField以外の部分を押した時にキーボードを閉じる */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
