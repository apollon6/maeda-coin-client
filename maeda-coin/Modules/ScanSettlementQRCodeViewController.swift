//
//  ScanSettlementQRCodeViewController.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/06/14.
//  Copyright © 2020 himawari. All rights reserved.
//

import UIKit
import MercariQRScanner

class ScanSettlementQRCodeViewController: UIViewController, QRScannerViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        let qrScannerView = QRScannerView(frame: view.bounds)
        view.addSubview(qrScannerView)
        qrScannerView.configure(delegate: self)
        qrScannerView.startRunning()
    }
    
    func qrScannerView(_ qrScannerView: QRScannerView, didFailure error: QRScannerError) {
        print(error)
    }

    func qrScannerView(_ qrScannerView: QRScannerView, didSuccess code: String) {
        print(code)
        
        /* QRコードの妥当性チェック */
        
        /* チェックOKだったら確認画面に遷移 */
        let storyboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "ConfirmSettlementViewController") as! ConfirmSettlementViewController
        nextView.address = code
        nextView.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    deinit {
        print("ScanSettlementQRCodeViewController Destroyed.")
    }
}
