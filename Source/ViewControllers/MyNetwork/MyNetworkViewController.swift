import UIKit

class MyNetworkViewController: UIViewController {
    private var screen: MyNetworkView?
    
    override func loadView() {
        self.screen = MyNetworkView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavbarForScreen(vc: self)
        self.screen?.configCollectionViewDelegate(delegate: self, dataSource: self)
    }
}

extension MyNetworkViewController:
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let expectedWidth = (self.view.bounds.width - 45) / 2
        let expetedHeight = expectedWidth + 50
        
        return CGSize(width: expectedWidth, height: expetedHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ConnectionCollectionViewCell.identifier, for: indexPath) as? ConnectionCollectionViewCell else {return UICollectionViewCell()}
        
        return cell
    }
}
