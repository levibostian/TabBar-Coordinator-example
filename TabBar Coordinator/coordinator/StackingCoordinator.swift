//
//  StackingCoordinator.swift
//  TabBar Coordinator
//
//  Created by Levi Bostian on 2/27/20.
//  Copyright © 2020 Levi Bostian. All rights reserved.
//

import Foundation
import SwiftCoordinator

class StackingCoordinator: NavigationCoordinator {
    var childCoordinators: [Coordinator] = []
    var navigator: NavigatorType
    var rootViewController: UINavigationController
    
    private let stackingViewController: StackingViewController
    
    init() {
        stackingViewController = StackingViewController()
        stackingViewController.numberInStack = 0
        
        let navigationController = UINavigationController(rootViewController: stackingViewController)
        
        self.navigator = Navigator(navigationController: navigationController)
        self.rootViewController = navigationController
    }
    
    func start() {
        stackingViewController.delegate = self
    }
}

extension StackingCoordinator: StackingViewControllerDelegate {
    
    func didTapStack(_ viewController: StackingViewController) {
        let numberInStack = viewController.numberInStack + 1
        
        let nextStackViewController = StackingViewController()
        nextStackViewController.numberInStack = numberInStack
        nextStackViewController.delegate = self
        
        navigator.push(nextStackViewController, animated: true)
    }
    
}
