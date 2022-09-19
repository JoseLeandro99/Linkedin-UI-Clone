import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTabBarItems()
        self.setupUI()
    }
    
    private func configTabBarItems() {
        let homeVc = UINavigationController(rootViewController: HomeViewController())
        homeVc.tabBarItem.image = UIImage(systemName: "house")
        homeVc.title = "Home"
        
        let myNetworkVc = UINavigationController(rootViewController: MyNetworkViewController())
        myNetworkVc.tabBarItem.image = UIImage(systemName: "person.2")
        myNetworkVc.title = "My Network"
        
        let postVc = UINavigationController(rootViewController: PostViewController())
        postVc.tabBarItem.image = UIImage(systemName: "plus.app.fill")
        postVc.title = "Post"
        
        let notificationsVc = UINavigationController(rootViewController: NotificationsViewController())
        notificationsVc.tabBarItem.image = UIImage(systemName: "bell.fill")
        notificationsVc.title = "Notifications"
        
        let jobsVc = UINavigationController(rootViewController: JobsViewController())
        jobsVc.tabBarItem.image = UIImage(systemName: "suitcase.fill")
        jobsVc.title = "Jobs"
        
        self.setViewControllers([homeVc, myNetworkVc, postVc, notificationsVc, jobsVc], animated: true)
    }
    
    private func setupUI() {
        self.tabBar.backgroundColor = .systemGray6
        self.tabBar.tintColor = .label
        
        self.tabBar.backgroundImage = UIImage()
    }
}
