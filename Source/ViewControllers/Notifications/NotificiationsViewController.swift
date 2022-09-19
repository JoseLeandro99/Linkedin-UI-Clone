import UIKit

class NotificationsViewController: UIViewController {
    private var screen: NotificationsView?
    
    override func loadView() {
        self.screen = NotificationsView()
        self.view =  self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavbarForScreen(vc: self)
        self.screen?.configTableViewDelegate(delegate: self, dataSource: self)
    }
}

extension NotificationsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationTableViewCell.identifier, for: indexPath) as? NotificationTableViewCell else {return UITableViewCell()}
        
        return cell
    }
}
