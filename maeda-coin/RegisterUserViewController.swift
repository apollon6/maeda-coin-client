//
//  RegisterUserViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class RegisterUserViewController: UIViewController {

    /* ログインID */
    @IBOutlet weak var loginId: UITextField!
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
    }
    
    /* 登録ボタン押下時のアクション */
    @IBAction func pushRegister(_ sender: Any) {
        // 認証番号発行APIを呼び出し
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のViewControllerを取得
        guard let nextView = segue.destination as? PhoneNumberAuthenicationViewController else { return }
        
        
        nextView.authenicationId = "100001"
    }
    
    /* TextField以外の部分を押した時にキーボードを閉じる */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
