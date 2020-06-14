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
    
    @IBOutlet weak var addressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addressLabel.text = address
    }

}
