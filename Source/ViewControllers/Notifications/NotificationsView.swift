import UIKit

class NotificationsView: UIView {
    private lazy var notificationsTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(
            NotificationTableViewCell.self,
            forCellReuseIdentifier: NotificationTableViewCell.identifier)
        table.backgroundColor = .systemGray5
        table.separatorStyle = .none
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.notificationsTable.delegate = delegate
        self.notificationsTable.dataSource = dataSource
    }
    
    private func setupUI() {
        self.backgroundColor = .systemGray5
        
        self.setupNotificationsTable()
    }
    
    private func setupNotificationsTable() {
        self.addSubview(self.notificationsTable)
        NSLayoutConstraint.activate([
            self.notificationsTable.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.notificationsTable.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.notificationsTable.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.notificationsTable.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
