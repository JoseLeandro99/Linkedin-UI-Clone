import UIKit

class JobsTableViewCell: UITableViewCell {
    static let identifier = "JobsTableViewCell"
    
    private lazy var container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = . systemGray6
        return view
    }()
    
    private lazy var bottomDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray3
        return view
    }()
    
    private lazy var companyContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray2
        view.layer.cornerRadius = 4
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var companyImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "building.2")
        imageView.tintColor = .white
        return imageView
    }()
    
    private lazy var jobTitleLabel = AppLabel(
        text: "Senior Mobile Developer iOS",
        color: .label,
        font: .systemFont(ofSize: 17, weight: .medium),
        align: .left)
    
    private lazy var jobCompanyLabel = AppLabel(
        text: "Software Company Inc.",
        color: .systemGray,
        font: .systemFont(ofSize: 14, weight: .regular),
        align: .left)
    
    private lazy var jobLocationLabel = AppLabel(
        text: "Brazil/Remote",
        color: .systemGray2,
        font: .systemFont(ofSize: 13, weight: .regular),
        align: .left)
    
    private lazy var jobBookmark: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "bookmark")
        imageView.tintColor = .systemGray2
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        self.container.addSubview(self.bottomDivider)
        self.companyContainer.addSubview(self.companyImage)
        self.container.addSubview(self.companyContainer)
        self.container.addSubview(self.jobTitleLabel)
        self.container.addSubview(self.jobBookmark)
        self.container.addSubview(self.jobCompanyLabel)
        self.container.addSubview(self.jobLocationLabel)
        self.contentView.addSubview(self.container)
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.topAnchor),
            self.container.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.container.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.container.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            self.bottomDivider.bottomAnchor.constraint(equalTo: self.container.bottomAnchor),
            self.bottomDivider.leadingAnchor.constraint(equalTo: self.container.leadingAnchor),
            self.bottomDivider.trailingAnchor.constraint(equalTo: self.container.trailingAnchor),
            self.bottomDivider.heightAnchor.constraint(equalToConstant: 0.5),
            
            self.companyContainer.topAnchor.constraint(equalTo: self.container.topAnchor, constant: 16),
            self.companyContainer.leadingAnchor.constraint(equalTo: self.container.leadingAnchor, constant: 16),
            self.companyContainer.widthAnchor.constraint(equalToConstant: 60),
            self.companyContainer.heightAnchor.constraint(equalTo: self.companyContainer.widthAnchor),
            
            self.companyImage.centerYAnchor.constraint(equalTo: self.companyContainer.centerYAnchor),
            self.companyImage.centerXAnchor.constraint(equalTo: self.companyContainer.centerXAnchor),
            self.companyImage.widthAnchor.constraint(equalToConstant: 40),
            self.companyImage.heightAnchor.constraint(equalToConstant: 40),
            
            self.jobTitleLabel.topAnchor.constraint(equalTo: self.container.topAnchor, constant: 16),
            self.jobTitleLabel.leadingAnchor.constraint(equalTo: self.companyContainer.trailingAnchor,constant: 16),
            self.jobTitleLabel.trailingAnchor.constraint(equalTo: self.container.trailingAnchor, constant: -16),
            
            self.jobBookmark.topAnchor.constraint(equalTo: self.container.topAnchor, constant: 16),
            self.jobBookmark.trailingAnchor.constraint(equalTo: self.container.trailingAnchor, constant: -16),
            self.jobBookmark.widthAnchor.constraint(equalToConstant: 25),
            self.jobBookmark.heightAnchor.constraint(equalToConstant: 20),
            
            self.jobCompanyLabel.topAnchor.constraint(equalTo: self.jobTitleLabel.bottomAnchor, constant: 4),
            self.jobCompanyLabel.leadingAnchor.constraint(equalTo: self.jobTitleLabel.leadingAnchor),
            self.jobCompanyLabel.trailingAnchor.constraint(equalTo: self.jobTitleLabel.trailingAnchor),
            
            self.jobLocationLabel.topAnchor.constraint(equalTo: self.jobCompanyLabel.bottomAnchor, constant: 6),
            self.jobLocationLabel.leadingAnchor.constraint(equalTo: self.jobCompanyLabel.leadingAnchor),
            self.jobLocationLabel.trailingAnchor.constraint(equalTo: self.jobCompanyLabel.trailingAnchor),
        ])
    }
}
