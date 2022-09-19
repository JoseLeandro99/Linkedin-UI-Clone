import UIKit

class ConnectionCollectionViewCell: UICollectionViewCell {
    static let identifier = "ConnectionCollectionViewCell"
    
    private lazy var avatarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "profile")
        imageView.layer.cornerRadius = 45
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var nameLabel = AppLabel(
        text: "Josh Harryson Freeman",
        color: .label,
        font: .systemFont(ofSize: 17, weight: .medium),
        align: .center,
        lines: 2)
    
    private lazy var subtitleLabel = AppLabel(
        text: "Mobile iOS Developer",
        color: .systemGray2,
        font: .systemFont(ofSize: 12, weight: .regular),
        align: .center)
    
    private lazy var connectButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Connect", for: .normal)
        button.setTitleColor(UIColor.link, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.link.cgColor
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        self.contentView.backgroundColor = .systemGray6
        self.layer.cornerRadius = 16
        self.clipsToBounds = true
        
        self.contentView.addSubview(self.avatarImage)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.subtitleLabel)
        self.contentView.addSubview(self.connectButton)
        
        NSLayoutConstraint.activate([
            self.avatarImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            self.avatarImage.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            self.avatarImage.widthAnchor.constraint(equalToConstant: 90),
            self.avatarImage.heightAnchor.constraint(equalTo: self.avatarImage.widthAnchor),
            
            self.nameLabel.topAnchor.constraint(equalTo: self.avatarImage.bottomAnchor, constant: 10),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.nameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            self.subtitleLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 4),
            self.subtitleLabel.leadingAnchor.constraint(equalTo: self.nameLabel.leadingAnchor),
            self.subtitleLabel.trailingAnchor.constraint(equalTo: self.nameLabel.trailingAnchor),
            
            
            self.connectButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            self.connectButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.connectButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.connectButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
