//
//  StackingCoordinator.swift
//  TabBar Coordinator
//
//  Created by Levi Bostian on 2/27/20.
//  Copyright © 2020 Levi Bostian. All rights reserved.
//

import Foundation
import SwiftCoordinator

class BoringCoordinator: NavigationCoordinator {
    var childCoordinators: [Coordinator] = []
    var navigator: NavigatorType
    var rootViewController: UINavigationController
    
    private let boringViewController: BoringViewController
    
    init() {
        boringViewController = BoringViewController()
        
        let navigationController = UINavigationController(rootViewController: boringViewController)
        
        self.navigator = Navigator(navigationController: navigationController)
        self.rootViewController = navigationController
    }
    
    func start() {
        boringViewController.delegate = self
    }
}

extension BoringCoordinator: BoringViewControllerDelegate {
}
