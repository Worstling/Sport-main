//
//  UIView + Extensions.swift
//  Sport
//
//  Created by User on 09.02.2023.
//

import Foundation
import UIKit


extension UIView {
    
    func addShadowOnView() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 1.0
    }
}
