import UIKit
import SnapKit
import Then

class signinViewcontroller: UIViewController {
    let signinlogolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 60)
        $0.font.withSize(60)
    }
    let signinIdlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
        $0.text = " ID"
    }
    let signinIdTextField = UITextField().then {
        $0.placeholder = "  아이디를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let signinPwlb = UILabel().then {
        $0.text = " PW"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
    }
    let signinPwTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let goTosignUpBt = UIButton().then {
        $0.setTitle("회원이 아니신가요? 회원가입", for: .normal)
        $0.addTarget(signinViewcontroller.self, action: #selector(TabsignupBt), for: .touchUpInside)
    }
    let signinBt = UIButton().then {
            $0.backgroundColor = UIColor(red: 59/255, green: 7/255, blue: 75/255, alpha: 1)
           $0.setTitle("로그인", for: .normal)
            $0.addTarget(signinViewcontroller.self, action: #selector(TabsigninBt), for: .touchUpInside)
       }
        @objc func TabsignupBt() {
            print("회원가입")
        }
        @objc func TabsigninBt() {
            print("로그인 성공!")
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setup()
    }
    func setup() {
        [
            signinlogolb, signinIdlb, signinIdTextField, signinPwTextField, signinPwlb
        ].forEach{ self.view.addSubview($0)
        }
        signinlogolb.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.bottom.equalToSuperview().offset(-100)
            $0.left.equalToSuperview().offset(0)
                $0.right.equalToSuperview().offset(0)
            
        }
        signinIdl.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.bottom.equalToSuperview().offset(-100)
            $0.left.equalToSuperview().offset(0)
                $0.right.equalToSuperview().offset(0)
            
        }
        signinIdTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.bottom.equalToSuperview().offset(-100)
            $0.left.equalToSuperview().offset(0)
                $0.right.equalToSuperview().offset(0)
            
        }
        igninPwTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.bottom.equalToSuperview().offset(-100)
            $0.left.equalToSuperview().offset(0)
                $0.right.equalToSuperview().offset(0)
            
        }
        
        
        
        
    }
}
