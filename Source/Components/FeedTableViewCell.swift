import UIKit

class FeedTableViewCell: UITableViewCell {
    static let identifier = "FeedTableViewCell"
    
    private lazy var postContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var postContainerHeader: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var authorAvatar: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "profile")
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var authorNameLabel = AppLabel(
        text: "Josh Harryson Freeman",
        color: .label,
        font: .systemFont(ofSize: 18, weight: .medium),
        align: .left);
    
    private lazy var authorDescriptonLabel = AppLabel(
        text: "Mobile iOS Developer",
        color: .systemGray2,
        font: .systemFont(ofSize: 14, weight: .regular),
        align: .left)
    
    private lazy var followButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+ Follow", for: .normal)
        button.setTitleColor(UIColor.link, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        return button
    }()
    
    private lazy var contentLabel = AppLabel(
        text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
        color: .label,
        font: .systemFont(ofSize: 16, weight: .regular),
        align: .left,
        lines: 10)
    
    private lazy var hashtagsLabel = AppLabel(
        text: "#mobile #ios #developer #software",
        color: .link,
        font: .systemFont(ofSize: 14, weight: .regular),
        align: .left)
    
    private lazy var postCoverImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "post")
        return imageView
    }()
    
    private lazy var horizontalDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private lazy var postFooterActions: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        view.axis = .horizontal
        return view
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Like", for: .normal)
        button.setTitleColor(UIColor.systemGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
        button.imageView?.tintColor = .systemGray
        return button
    }()
    
    private lazy var commentButton: UIButton = {
        let button = UIButton()
        button.setTitle("Comment", for: .normal)
        button.setTitleColor(UIColor.systemGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setImage(UIImage(systemName: "text.bubble"), for: .normal)
        button.imageView?.tintColor = .systemGray
        return button
    }()
    
    private lazy var shareButton: UIButton = {
        let button = UIButton()
        button.setTitle("Share", for: .normal)
        button.setTitleColor(UIColor.systemGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setImage(UIImage(systemName: "arrow.turn.up.right"), for: .normal)
        button.imageView?.tintColor = .systemGray
        return button
    }()
    
    private lazy var sendButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send", for: .normal)
        button.setTitleColor(UIColor.systemGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.setImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        button.imageView?.tintColor = .systemGray
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
        self.setupConstraints()
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        self.postContainerHeader.addSubview(self.authorAvatar)
        self.postContainerHeader.addSubview(self.authorNameLabel)
        self.postContainerHeader.addSubview(self.authorDescriptonLabel)
        self.postContainerHeader.addSubview(self.followButton)
        
        self.postContainer.addSubview(self.postContainerHeader)
        self.postContainer.addSubview(self.contentLabel)
        self.postContainer.addSubview(self.hashtagsLabel)
        self.postContainer.addSubview(self.postCoverImage)
        self.postContainer.addSubview(self.postFooterActions)
        
        self.postFooterActions.addArrangedSubview(self.likeButton)
        self.postFooterActions.addArrangedSubview(self.commentButton)
        self.postFooterActions.addArrangedSubview(self.shareButton)
        self.postFooterActions.addArrangedSubview(self.sendButton)
        
        self.postContainer.addSubview(self.horizontalDivider)
        self.contentView.addSubview(self.postContainer)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            self.postContainer.topAnchor.constraint(equalTo: self.topAnchor),
            self.postContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.postContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.postContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            self.postContainerHeader.topAnchor.constraint(equalTo: self.postContainer.topAnchor),
            self.postContainerHeader.leadingAnchor.constraint(equalTo: self.postContainer.leadingAnchor),
            self.postContainerHeader.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor),
            self.postContainerHeader.heightAnchor.constraint(equalToConstant: 70),
            
            self.authorAvatar.leadingAnchor.constraint(equalTo: self.postContainerHeader.leadingAnchor, constant: 8),
            self.authorAvatar.topAnchor.constraint(equalTo: self.postContainerHeader.topAnchor, constant: 8),
            self.authorAvatar.widthAnchor.constraint(equalToConstant: 50),
            self.authorAvatar.heightAnchor.constraint(equalTo: self.authorAvatar.widthAnchor),
            
            self.authorNameLabel.topAnchor.constraint(equalTo: self.postContainerHeader.topAnchor, constant: 12),
            self.authorNameLabel.leadingAnchor.constraint(equalTo: self.authorAvatar.trailingAnchor, constant: 10),
            self.authorNameLabel.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor),
            
            self.authorDescriptonLabel.topAnchor.constraint(equalTo: self.authorNameLabel.bottomAnchor, constant: 4),
            self.authorDescriptonLabel.leadingAnchor.constraint(equalTo: self.authorNameLabel.leadingAnchor),
            self.authorDescriptonLabel.trailingAnchor.constraint(equalTo: self.authorNameLabel.trailingAnchor),
            
            self.followButton.topAnchor.constraint(equalTo: self.postContainerHeader.topAnchor, constant: 8),
            self.followButton.trailingAnchor.constraint(equalTo: self.postContainerHeader.trailingAnchor, constant: -16),
            self.followButton.widthAnchor.constraint(equalToConstant: 80),
            self.followButton.heightAnchor.constraint(equalToConstant: 40),
            
            self.contentLabel.topAnchor.constraint(equalTo: self.postContainerHeader.bottomAnchor),
            self.contentLabel.leadingAnchor.constraint(equalTo: self.postContainer.leadingAnchor, constant: 10),
            self.contentLabel.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor, constant: -10),
            
            self.hashtagsLabel.topAnchor.constraint(equalTo: self.contentLabel.bottomAnchor),
            self.hashtagsLabel.leadingAnchor.constraint(equalTo: self.postContainer.leadingAnchor, constant: 10),
            self.hashtagsLabel.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor),
            self.hashtagsLabel.heightAnchor.constraint(equalToConstant: 40),
            
            self.postCoverImage.topAnchor.constraint(equalTo: self.hashtagsLabel.bottomAnchor),
            self.postCoverImage.leadingAnchor.constraint(equalTo: self.postContainer.leadingAnchor),
            self.postCoverImage.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor),
            self.postCoverImage.heightAnchor.constraint(equalToConstant: 300),
            
            self.horizontalDivider.topAnchor.constraint(equalTo: self.postFooterActions.topAnchor, constant: 4),
            self.horizontalDivider.leadingAnchor.constraint(equalTo: self.postFooterActions.leadingAnchor),
            self.horizontalDivider.trailingAnchor.constraint(equalTo: self.postFooterActions.trailingAnchor),
            self.horizontalDivider.heightAnchor.constraint(equalToConstant: 1),
            
            self.postFooterActions.bottomAnchor.constraint(equalTo: self.postContainer.bottomAnchor),
            self.postFooterActions.leadingAnchor.constraint(equalTo: self.postContainer.leadingAnchor),
            self.postFooterActions.trailingAnchor.constraint(equalTo: self.postContainer.trailingAnchor),
            self.postFooterActions.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}
