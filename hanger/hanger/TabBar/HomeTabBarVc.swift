import UIKit
import Then
import SnapKit

class HomeVC: UIViewController {
    
        
    let hatBt = UIButton.then {
        $0.setTitle("HAT", for: .normal)
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
        $0.addTarget(signinVC.self, action: #selector(TaphatBt), for: .touchUpInside)
    
    }
    @objc func TaphatBt() {
        print("go hat")
    }
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

