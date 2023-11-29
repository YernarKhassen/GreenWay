import UIKit

class TabBarCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController
    
    private let homeVC = UINavigationController()
    private let profileVC = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let tabBar = makeTabBar()
        navigationController.present(tabBar, animated: true)
    }
    
    private func makeTabBar() -> UITabBarController {
        let tabBar =  TabBarController()
        tabBar.modalTransitionStyle = .crossDissolve
        tabBar.modalPresentationStyle = .fullScreen
        tabBar.coordinatorDelegate = self
        
        homeVC.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "homekit"), tag: 0)
        profileVC.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 1)
        
        tabBar.viewControllers = [homeVC, profileVC]
        
        let homeCoordinator = HomeCoordinator(navigationController: homeVC)
        let profileCoordinator = ProfileCoordinator(navigationController: profileVC)
        
        [homeCoordinator, profileCoordinator].forEach {
            coordinate(to: $0)
        }
        
        return tabBar
    }
}
