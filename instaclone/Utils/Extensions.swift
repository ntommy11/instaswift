//
//  Extensions.swift
//  instaclone
//
//  Created by 남세현 on 2021/05/23.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

