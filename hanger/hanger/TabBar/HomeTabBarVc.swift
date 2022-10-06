import UIKit
import Then
import SnapKit

class HomeTabBarVC: UIViewController {
    
        
       
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setup()
    }
    func setup() {
        [
            
        ].forEach{ self.view.addSubview($0)
        }
       
//        .snp.makeConstraints {
//            $0.top.equalToSuperview().offset(0)
//            $0.bottom.equalToSuperview().offset(-700)
//            $0.left.equalToSuperview().offset(0)
//            $0.right.equalToSuperview().offset(0)
//        }
    }
}
