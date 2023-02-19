//
//  Coordinator.swift
//  SparrowTek
//
//  Created by Thomas Rademaker on 11/4/18.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import UIKit

@MainActor
public protocol Coordinator: AnyObject, Presentable {
    var router: FlowRouterType { get }
    var childCoordinators: [Coordinator] { get set }
    var id: UUID? { get set }
    
    init(router: FlowRouterType)
    func start()
}

extension Coordinator {
    public func present(_ coordinator: Coordinator) {
        coordinator.id = UUID()
        childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    public func removeChild(_ coordinator: Coordinator?) {
        guard let coordinator = coordinator else { return }
        
        var index = 0
        for child in childCoordinators {
            if child.id == coordinator.id {
                childCoordinators.remove(at: index)
                return
            }
            
            index += 1
        }
    }
}
