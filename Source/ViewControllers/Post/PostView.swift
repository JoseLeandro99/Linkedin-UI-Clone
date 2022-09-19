import UIKit

class PostView: UIView {
    private lazy var textField: UITextView = {
        let textField = UITextView()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray6
        textField.font = .systemFont(ofSize: 18, weight: .regular)
        textField.textColor = .label
        textField.text = "What do you want to talk about?"
        return textField
    }()
    
    private lazy var footerActionsContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    private lazy var cameraButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        button.imageView?.tintColor = .systemGray
        return button
    }()
    
    private lazy var videoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "video.fill"), for: .normal)
        button.imageView?.tintColor = .systemGray
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
        self.backgroundColor = .systemGray5
        
        self.setupTextField()
        self.setupFooterActions()
    }
    
    private func setupTextField() {
        self.addSubview(self.textField)
        
        NSLayoutConstraint.activate([
            self.textField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.textField.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -40),
        ])
    }
    
    private func setupFooterActions() {
        self.addSubview(self.footerActionsContainer)
        self.footerActionsContainer.addSubview(self.cameraButton)
        self.footerActionsContainer.addSubview(self.videoButton)
        
        NSLayoutConstraint.activate([
            self.footerActionsContainer.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            self.footerActionsContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.footerActionsContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.footerActionsContainer.heightAnchor.constraint(equalToConstant: 55),
            
            self.cameraButton.leadingAnchor.constraint(equalTo: self.footerActionsContainer.leadingAnchor, constant: 4),
            self.cameraButton.centerYAnchor.constraint(equalTo: self.footerActionsContainer.centerYAnchor),
            self.cameraButton.widthAnchor.constraint(equalToConstant: 45),
            self.cameraButton.heightAnchor.constraint(equalTo: self.cameraButton.widthAnchor),
            
            self.videoButton.leadingAnchor.constraint(equalTo: self.cameraButton.trailingAnchor),
            self.videoButton.centerYAnchor.constraint(equalTo: self.cameraButton.centerYAnchor),
            self.videoButton.widthAnchor.constraint(equalTo: self.cameraButton.widthAnchor),
            self.videoButton.heightAnchor.constraint(equalTo: self.cameraButton.heightAnchor)
        ])
    }
}
