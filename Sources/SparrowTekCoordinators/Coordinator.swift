//
//  Coordinator.swift
//  Avocadough
//
//  Created by Thomas Rademaker on 11/4/18.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import UIKit

public protocol Coordinator: Presentable {
    
    var router: FlowRouterType { get }
    var childCoordinators: [Coordinator] { get set }
    var index: Int? { get set }
    
    init(router: FlowRouterType)
    func start()
}
