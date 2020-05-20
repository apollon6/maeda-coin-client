//
//  LoginUser.swift
//  maeda-coin
//
//  Created by 前田隆之 on 2020/05/04.
//  Copyright © 2020 himawari. All rights reserved.
//

import Foundation

class LoginUser: NSObject {
    
    static let instance = LoginUser()

    var userId: String?
    
    var address: String?
    
    var nickname: String?
}
