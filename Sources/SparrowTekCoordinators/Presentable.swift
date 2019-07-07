//
//  Presentable.swift
//  Avocadough
//
//  Created by Thomas Rademaker on 3/17/19.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import UIKit

public protocol Presentable {
    func toPresentable() -> UIViewController
}

extension UIViewController: Presentable {
    public func toPresentable() -> UIViewController {
        return self
    }
}
