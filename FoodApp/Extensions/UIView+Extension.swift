//
//  UIView+Extension.swift
//  FoodApp
//
//  Created by Alican TARIM on 26.12.2024.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
