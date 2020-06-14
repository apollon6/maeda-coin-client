//
//  ConfirmSettlementViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/06/14.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit

class ConfirmSettlementViewController: UIViewController {
    
    var address: String?
    
    /* 決済先店舗名 */
    @IBOutlet weak var storeName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* 決済先情報取得APIを呼び出し */
        
    }
    
    @IBAction func pushPay(_ sender: Any) {
    }
    
    /* TextField以外の部分を押した時にキーボードを閉じる */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    deinit {
        print("ConfirmSettlementViewController Destroyed.")
    }
}
