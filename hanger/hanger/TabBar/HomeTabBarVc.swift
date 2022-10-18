import UIKit
import Then
import SnapKit

class HomeVC: UIViewController {
    let navigationBar = UINavigationBar().then {
        let
    }
    override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           self.navigationController?.isNavigationBarHidden = false
       }
    override func viewDidLoad() {
        
    }
}

