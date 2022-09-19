import UIKit

class JobsViewController: UIViewController {
    private var screen: JobsView?
    
    override func loadView() {
        self.screen = JobsView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavbarForScreen(vc: self)
        self.screen?.configTableDelegates(delegate: self, dataSource: self)
    }
}

extension JobsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: JobsTableViewCell.identifier, for: indexPath) as? JobsTableViewCell else {return UITableViewCell()}
        
        return cell
    }
}
