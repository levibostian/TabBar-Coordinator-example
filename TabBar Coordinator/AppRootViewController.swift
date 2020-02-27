import UIKit

/** The app's root controller - a `UIViewController` which simply holds a child `UIViewController`. */

final class AppRootViewController: UITabBarController {
    
    /**
     You must have a strong reference to the coordinators to keep them in memory.
     */
    private let stackingCoordinator = StackingCoordinator()
    private let boringCoordinator = BoringCoordinator()
    
    private var stackingViewController: UIViewController {
        return self.stackingCoordinator.rootViewController
    }
    
    private var boringViewController: UIViewController {
        return self.boringCoordinator.rootViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Using random system bar items here. This app is to demonstrate coordinators, not how to make a bar item.
        stackingViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
        boringViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        stackingCoordinator.start()
        boringCoordinator.start()
    
        self.viewControllers = [
            stackingViewController,
            boringViewController
        ]
    }
    
}
