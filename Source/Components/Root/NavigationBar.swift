import UIKit

func configNavbarForScreen(vc: UIViewController) {
    let accountIconView = UIImageView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
    accountIconView.contentMode = .scaleAspectFit
    accountIconView.image = UIImage(systemName: "person.circle.fill")
    
    let messagesIconView = UIImageView(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
    messagesIconView.contentMode = .scaleAspectFit
    messagesIconView.image = UIImage(systemName: "ellipsis.bubble.fill")
    
    let searchBarView = UISearchBar(frame: CGRect(x: 0, y: 0, width: vc.view.bounds.width, height: 50))
    searchBarView.placeholder = "Search"
    
    vc.navigationController?.navigationBar.tintColor = .systemGray2
    vc.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: accountIconView)
    vc.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: messagesIconView)
    vc.navigationItem.titleView = searchBarView
}
