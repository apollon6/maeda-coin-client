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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let qrScannerView = QRScannerView(frame: view.bounds)
        view.addSubview(qrScannerView)
        qrScannerView.configure(delegate: self)
        qrScannerView.startRunning()
    }
    
    func qrScannerView(_ qrScannerView: QRScannerView, didFailure error: QRScannerError) {
        qrScannerView.stopRunning()
        let alert: UIAlertController = UIAlertController(title: "エラー", message: "QRコードの読み取りに失敗しました。恐れ入りますが、もう一度お試しください。", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
            qrScannerView.rescan()
            qrScannerView.startRunning()
        })
        alert.addAction(okAction)
        present(alert, animated: true)
        return
    }

    func qrScannerView(_ qrScannerView: QRScannerView, didSuccess code: String) {
        print(code)
        qrScannerView.stopRunning()
        
        /* QRコードの妥当性チェック */
        if (false) {
            let alert: UIAlertController = UIAlertController(title: "エラー", message: "このQRコードの形式はサポートされていません。", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
                qrScannerView.rescan()
                qrScannerView.startRunning()
            })
            alert.addAction(okAction)
            present(alert, animated: true)
            return
        }
        
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
