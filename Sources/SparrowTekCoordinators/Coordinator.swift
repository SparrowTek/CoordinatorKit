//
//  Coordinator.swift
//  Avocadough
//
//  Created by Thomas Rademaker on 11/4/18.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import UIKit

public protocol Coordinator: class, Presentable {
    
    var router: FlowRouterType { get }
    var childCoordinators: [Coordinator] { get set }
    var index: Int? { get set }
    
    init(router: FlowRouterType)
    func start()
}

extension Coordinator {
    public func present(_ coordinator: Coordinator) {
        coordinator.index = childCoordinators.count
        childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    public func removeChild(_ coordinator: Coordinator?) {
        guard let coordinator = coordinator else { return }
        
        for child in childCoordinators {
            if child.index == coordinator.index {
                if let index = coordinator.index {
                    childCoordinators.remove(at: index)
                }
            }
        }
    }
}
