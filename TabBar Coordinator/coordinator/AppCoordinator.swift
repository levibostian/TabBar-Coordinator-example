import Foundation
import UIKit
import SwiftCoordinator

/**
 Exists to contain UIWindow to display the root VC.
 */
final class AppCoordinator: PresentationCoordinator {
    var childCoordinators: [Coordinator] = []
    var rootViewController = AppRootViewController()

    init(window: UIWindow) {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

    func start() {
    }
}
