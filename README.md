![This is an example app](https://img.shields.io/badge/project%20type-Example%20app-informational.svg)
![Swift 5.0.x](https://img.shields.io/badge/Swift-5.0.x-orange.svg)

# TabBar with Coordinator 

Example iOS app demonstrating how to use a `UITabBar` with the iOS Coordinator pattern. 

There are many ways of implementing a Coordinator in your app. My preferred way of doing the Coordinator pattern at the moment is with [this library](https://github.com/daveneff/Coordinator/) which this project uses. 

This project is meant to demonstrate 1 thing: how to show a `UITabBar` in your app where each screen of the tab hosts a child coordinator. 

Here is an overview on how to do this:
1. ([link to source](https://github.com/levibostian/TabBar-Coordinator-example/blob/master/TabBar%20Coordinator/coordinator/AppCoordinator.swift)) Create a main coordinator the the `AppDelegate` starts and shows the first ViewController of the app. Since `UITabBarController` is a `UIViewController`, our TabBar will be our ViewController this coordinator starts. 
2. ([link to source](https://github.com/levibostian/TabBar-Coordinator-example/blob/master/TabBar%20Coordinator/AppRootViewController.swift)) Have your `UITabBarController` instantiate a child coordinator for each tab. The ViewControllers of our `UITabBarController` are the root ViewControllers of each of these coordinators. 
3. Done! The rest of the implementation of this app demonstrate the coordinator pattern more then how to use coordinators with a tab bar. 

# Getting started 

* Clone the repo to your machine. 
* `pod install`
* Open workspace on your machine. Compile and run app. 

## Author

* Levi Bostian - [GitHub](https://github.com/levibostian), [Twitter](https://twitter.com/levibostian), [Website/blog](http://levibostian.com)

![Levi Bostian image](https://gravatar.com/avatar/22355580305146b21508c74ff6b44bc5?s=250)

## Contribute

This project is open to pull requests to improve the project. To keep this project small, pull requests will only be merged if the changes fit into the vision of this project. Bug fixes, updating dependencies, documentation is always welcome. 

# Credits 

Inspiration for this project comes from [this doc](https://www.hackingwithswift.com/articles/175/advanced-coordinator-pattern-tutorial-ios) that gave me the idea of referencing the ViewControllers within each child coordinator. Thanks!
