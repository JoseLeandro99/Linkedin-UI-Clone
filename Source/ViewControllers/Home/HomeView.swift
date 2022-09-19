import UIKit

class HomeView: UIView {
    private lazy var feedTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemGray5
        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: FeedTableViewCell.identifier)
        tableView.separatorInset = .zero
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configFeedTableDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.feedTableView.delegate = delegate
        self.feedTableView.dataSource = dataSource
    }
    
    private func setupUI() {
        self.backgroundColor = .systemGray5
        self.setupFeedTable()
    }
    
    private func setupFeedTable() {
        self.addSubview(self.feedTableView)
        NSLayoutConstraint.activate([
            self.feedTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            self.feedTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            self.feedTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            self.feedTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
