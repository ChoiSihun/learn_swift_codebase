import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func setTabBarBackgroundColor() {
            tabBar.barTintColor = UIColor(red: 44/255, green: 0/255, blue: 58/255, alpha: 1)
        }
        let homeTabBar = UINavigationController(rootViewController: TestViewController())
        homeTabBar.tabBarItem.title = "메인"
        homeTabBar.tabBarItem.image = UIImage(systemName: "house")
        
        
        let sarchTabBar = UIViewController()
        sarchTabBar.tabBarItem.title = "검색"
        sarchTabBar.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        let bestTabBar = UIViewController()
        bestTabBar.tabBarItem.title = "주간 베스트"
        bestTabBar.tabBarItem.image = UIImage(systemName: "bookmark")
        
        let profileTabBar = UIViewController()
        profileTabBar.tabBarItem.title = "프로필"
        profileTabBar.tabBarItem.image = UIImage(systemName: "person")
        
        
        viewControllers = [homeTabBar, sarchTabBar, bestTabBar, profileTabBar]
    }
    
}
