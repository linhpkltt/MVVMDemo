//
//  CGFloat+Extensions.swift
//  MVVMDemo
//
//  Created by Khánh Linh on 06/07/2021.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
