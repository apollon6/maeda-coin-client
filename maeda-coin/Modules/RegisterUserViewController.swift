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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* ユーザーIDの入力チェック */
        guard let userId = self.userId.text, !userId.isEmpty, 8 <= userId.count, userId.count <= 20 else {
            let alert: UIAlertController = UIAlertController(title: "入力エラー", message: "ユーザーIDが不正です。もう一度ご入力ください。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
            self.userId.backgroundColor = UIColor.Pink2()
            return
        }
        self.userId.backgroundColor = UIColor.White()
        print(userId.count)
        
        /* ログインパスワードの入力チェック */
        guard let loginPassword = self.loginPassword.text, !loginPassword.isEmpty, 8 <= loginPassword.count, loginPassword.count <= 20 else {
            let alert: UIAlertController = UIAlertController(title: "入力エラー", message: "ログインパスワードが不正です。もう一度ご入力ください。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
            self.loginPassword.backgroundColor = UIColor.Pink2()
            return
        }
        self.loginPassword.backgroundColor = UIColor.White()

        /* ニックネームの入力チェック */
        guard let nickname = self.nickname.text, !nickname.isEmpty, 1 <= nickname.count, nickname.count <= 20 else {
            let alert: UIAlertController = UIAlertController(title: "入力エラー", message: "ニックネームが不正です。もう一度ご入力ください。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
            self.nickname.backgroundColor = UIColor.Pink2()
            return
        }
        self.nickname.backgroundColor = UIColor.White()
        print(nickname.count)
        
        /* メールアドレスの入力チェック */
        guard let mailAddress = self.mailAddress.text, !mailAddress.isEmpty else {
            let alert: UIAlertController = UIAlertController(title: "入力エラー", message: "メールアドレスが不正です。もう一度ご入力ください。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
            self.mailAddress.backgroundColor = UIColor.Pink2()
            return
        }
        self.mailAddress.backgroundColor = UIColor.White()
        
        /* 電話番号の入力チェック */
        guard let phoneNumber = self.phoneNumber.text, !phoneNumber.isEmpty else {
            let alert: UIAlertController = UIAlertController(title: "入力エラー", message: "電話番号が不正です。もう一度ご入力ください。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true)
            self.phoneNumber.backgroundColor = UIColor.Pink2()
            return
        }
        self.phoneNumber.backgroundColor = UIColor.White()
        
        /* 遷移先のViewControllerを取得 */
        guard let nextView = segue.destination as? PhoneNumberAuthenicationViewController else { return }
        
        /* 次画面に入力情報を受け渡し */
        nextView.registerUserInformation.userId = userId
        nextView.registerUserInformation.loginPassword = loginPassword
        nextView.registerUserInformation.nickname = nickname
        nextView.registerUserInformation.mailAddress = mailAddress
        nextView.registerUserInformation.phoneNumber = phoneNumber
    }
    
    /* TextField以外の部分を押した時にキーボードを閉じる */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
