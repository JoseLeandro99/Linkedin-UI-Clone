import UIKit

class PostViewController: UIViewController {
    private var screen: PostView?
    
    override func loadView() {
        self.screen = PostView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configCustomNavbar()
    }
    
    private func configCustomNavbar() {
        self.navigationController?.navigationBar.tintColor = .label
        let leftItemButton = UIBarButtonItem(
            image: UIImage(systemName: "xmark"),
            style: .done,
            target: self,
            action: nil)
        
        let leftItemLabel = AppLabel(
            text: "Share a post",
            color: .label,
            font: .systemFont(ofSize: 18, weight: .medium),
            align: .left)
        
        let rightItemButton = UIBarButtonItem(
            title: "Share",
            style: .done,
            target: self,
            action: nil)
        
        self.navigationItem.leftBarButtonItems = [leftItemButton, UIBarButtonItem(customView: leftItemLabel)]
        self.navigationItem.rightBarButtonItem = rightItemButton
    }
}
