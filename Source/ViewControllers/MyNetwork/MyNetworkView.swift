import UIKit

class MyNetworkView: UIView {
    private lazy var manageNetworkContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var manageNetworkLabel = AppLabel(
        text: "Manage my network",
        color: .link,
        font: .systemFont(ofSize: 20, weight: .medium),
        align: .left)
    
    private lazy var arrowButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.compact.right"), for: .normal)
        button.setTitleColor(UIColor.systemGray2, for: .normal)
        return button
    }()
    
    private lazy var invitesContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var invitesLabel = AppLabel(
        text: "Invites",
        color: .link,
        font: .systemFont(ofSize: 20, weight: .medium),
        align: .left)
    
    private lazy var arrowButton2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.compact.right"), for: .normal)
        button.setTitleColor(UIColor.systemGray2, for: .normal)
        return button
    }()
    
    private lazy var connectionsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(ConnectionCollectionViewCell.self,
            forCellWithReuseIdentifier: ConnectionCollectionViewCell.identifier)
        collectionView.backgroundColor = .systemGray5
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configCollectionViewDelegate(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        self.connectionsCollectionView.delegate = delegate
        self.connectionsCollectionView.dataSource = dataSource
    }
    
    private func setupUI() {
        self.backgroundColor = .systemGray5
        self.setupManageNetworkContainer()
        self.setupInvitesContainer()
        self.setupCollectionView()
    }
    
    private func setupManageNetworkContainer() {
        self.addSubview(self.manageNetworkContainer)
        self.manageNetworkContainer.addSubview(self.manageNetworkLabel)
        self.manageNetworkContainer.addSubview(self.arrowButton)
        
        NSLayoutConstraint.activate([
            self.manageNetworkContainer.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.manageNetworkContainer.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.manageNetworkContainer.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.manageNetworkContainer.heightAnchor.constraint(equalToConstant: 70),
            
            self.manageNetworkLabel
                .topAnchor.constraint(equalTo: self.manageNetworkContainer.topAnchor),
            self.manageNetworkLabel
                .bottomAnchor.constraint(equalTo: self.manageNetworkContainer.bottomAnchor),
            self.manageNetworkLabel
                .leadingAnchor.constraint(equalTo: self.manageNetworkContainer.leadingAnchor, constant: 16),
            self.manageNetworkLabel
                .trailingAnchor.constraint(equalTo: self.manageNetworkContainer.trailingAnchor, constant: -16),
            
            self.arrowButton.topAnchor.constraint(equalTo: self.manageNetworkContainer.topAnchor),
            self.arrowButton.bottomAnchor.constraint(equalTo: self.manageNetworkContainer.bottomAnchor),
            self.arrowButton.trailingAnchor.constraint(equalTo: self.manageNetworkContainer.trailingAnchor),
            self.arrowButton.widthAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    private func setupInvitesContainer() {
        self.addSubview(self.invitesContainer)
        self.invitesContainer.addSubview(self.invitesLabel)
        self.invitesContainer.addSubview(self.arrowButton2)
        
        NSLayoutConstraint.activate([
            self.invitesContainer.topAnchor.constraint(equalTo: self.manageNetworkContainer.bottomAnchor, constant: 10),
            self.invitesContainer.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.invitesContainer.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.invitesContainer.heightAnchor.constraint(equalToConstant: 70),
            
            self.invitesLabel
                .topAnchor.constraint(equalTo: self.invitesContainer.topAnchor),
            self.invitesLabel
                .bottomAnchor.constraint(equalTo: self.invitesContainer.bottomAnchor),
            self.invitesLabel
                .leadingAnchor.constraint(equalTo: self.invitesContainer.leadingAnchor, constant: 16),
            self.invitesLabel
                .trailingAnchor.constraint(equalTo: self.invitesContainer.trailingAnchor, constant: -16),
            
            self.arrowButton2.topAnchor.constraint(equalTo: self.invitesContainer.topAnchor),
            self.arrowButton2.bottomAnchor.constraint(equalTo: self.invitesContainer.bottomAnchor),
            self.arrowButton2.trailingAnchor.constraint(equalTo: self.invitesContainer.trailingAnchor),
            self.arrowButton2.widthAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    private func setupCollectionView() {
        self.addSubview(self.connectionsCollectionView)
        
        NSLayoutConstraint.activate([
            self.connectionsCollectionView.topAnchor.constraint(equalTo: self.invitesContainer.bottomAnchor, constant: 20),
            self.connectionsCollectionView
                .leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            self.connectionsCollectionView
                .trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.connectionsCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
