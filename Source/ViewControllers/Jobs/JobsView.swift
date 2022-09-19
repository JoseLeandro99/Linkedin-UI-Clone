import UIKit

class JobsView: UIView {
    private lazy var recommendedForYouLabel = AppLabel(
        text: "Recommended for you",
        color: .label,
        font: .systemFont(ofSize: 18, weight: .medium),
        align: .left)
    
    private lazy var jobsTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.register(JobsTableViewCell.self, forCellReuseIdentifier: JobsTableViewCell.identifier)
        table.backgroundColor = .systemGray5
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configTableDelegates(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.jobsTableView.delegate = delegate
        self.jobsTableView.dataSource = dataSource
    }
    
    private func setupUI() {
        self.backgroundColor = .systemGray5
        self.setupLabel()
        self.setupJobsTable()
    }
    
    private func setupLabel() {
        self.addSubview(self.recommendedForYouLabel)
        NSLayoutConstraint.activate([
            self.recommendedForYouLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.recommendedForYouLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.recommendedForYouLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.recommendedForYouLabel.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
    
    private func setupJobsTable() {
        self.addSubview(self.jobsTableView)
        NSLayoutConstraint.activate([
            self.jobsTableView.topAnchor.constraint(equalTo: self.recommendedForYouLabel.bottomAnchor),
            self.jobsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.jobsTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.jobsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
