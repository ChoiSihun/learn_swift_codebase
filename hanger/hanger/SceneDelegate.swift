import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }
    
    //    let homeTabBarController = UINavigationController(rootViewController:  HomeTabBarViewController())
    //    let serchTabBarController = UINavigationController(rootViewController: SerchTabBarViewController())
    //    let bestTabBarController = UINavigationController(rootViewController: BestTabBarController())
    //    let profileTabBarController = UINavigationController(rootViewController: ProfileTabBarController())
}
