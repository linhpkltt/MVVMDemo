//
//  UIColor+Extensions.swift
//  MVVMDemo
//
//  Created by Khánh Linh on 06/07/2021.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
