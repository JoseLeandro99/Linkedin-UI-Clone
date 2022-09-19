import UIKit

class NotificationTableViewCell: UITableViewCell {
    static let identifier = "NotificationTableViewCell"
    
    private lazy var container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var bottomDividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray3
        return view
    }()
    
    private lazy var avatarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "profile")
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var notificationContentLabel = AppLabel(
        text: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
        color: .label,
        font: .systemFont(ofSize: 16, weight: .regular),
        align: .left,
        lines: 5)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        self.container.addSubview(self.bottomDividerView)
        self.container.addSubview(self.avatarImage)
        self.container.addSubview(self.notificationContentLabel)
        self.contentView.addSubview(self.container)
        
        NSLayoutConstraint.activate([
            self.container.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.container.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.container.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            self.container.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            
            self.bottomDividerView.bottomAnchor.constraint(equalTo: self.container.bottomAnchor),
            self.bottomDividerView.leadingAnchor.constraint(equalTo: self.container.leadingAnchor),
            self.bottomDividerView.trailingAnchor.constraint(equalTo: self.container.trailingAnchor),
            self.bottomDividerView.heightAnchor.constraint(equalToConstant: 0.5),
            
            self.avatarImage.centerYAnchor.constraint(equalTo: self.container.centerYAnchor),
            self.avatarImage.leadingAnchor.constraint(equalTo: self.container.leadingAnchor, constant: 16),
            self.avatarImage.widthAnchor.constraint(equalToConstant: 60),
            self.avatarImage.heightAnchor.constraint(equalToConstant: 60),
            
            self.notificationContentLabel.topAnchor.constraint(equalTo: self.container.topAnchor, constant: 8),
            self.notificationContentLabel.bottomAnchor.constraint(equalTo: self.container.bottomAnchor, constant: -8),
            self.notificationContentLabel.leadingAnchor.constraint(
                equalTo: self.avatarImage.trailingAnchor,
                constant: 16),
            self.notificationContentLabel.trailingAnchor.constraint(
                equalTo: self.container.trailingAnchor,
                constant: -8)
        ])
    }
}
