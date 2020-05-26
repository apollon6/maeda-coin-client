//
//  PhoneNumberAuthenicationViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class PhoneNumberAuthenicationViewController: UIViewController {
    
    /* 認証して完了ボタン */
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var authenticationNumber: UITextField!
    
    var authenticationId: String?
    
    let registerUserInformation = RegisterUserInformation()
    
    let frontApiCaller = FrontAPICaller()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* SMS送信APIを呼び出して、認証IDを受け取る */
        self.authenticationId = "100001"
        
        /* 認証して完了ボタンに影を設定 */
        doneButton.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        doneButton.layer.shadowColor = UIColor.black.cgColor
        doneButton.layer.shadowOpacity = 0.4
    }
    
    /* 認証して完了ボタン押下時のアクション */
    @IBAction func pushComplete(_ sender: Any) {
        /* SMS認証APIを呼び出し */
        guard let authenticationId = self.authenticationId else { return }
        
        /* 認証番号の有効判定 */
        
        /* 認証番号の一致判定 */

        guard let userId = registerUserInformation.userId else { return }
        guard let loginPassword = registerUserInformation.loginPassword else { return }
        guard let nickname = registerUserInformation.nickname else { return }
        guard let mailAddress = registerUserInformation.mailAddress else { return }
        guard let phoneNumber = registerUserInformation.phoneNumber else { return }
        
        /* ユーザー登録APIを呼び出し */
        
        let alert: UIAlertController = UIAlertController(title: "完了しました。", message: "ユーザー登録が完了しました。", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
            self.navigationController?.popToRootViewController(animated: true)
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
