import UIKit
import SnapKit
import Then

class singinViewcontroller: UIViewController {
    let singinlogolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 60)
        $0.font.withSize(60)
    }
    let singinIdlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
        $0.text = " ID"
    }
    let singinIdTextField = UITextField().then {
        $0.placeholder = "  아이디를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let singinPwlb = UILabel().then {
        $0.text = " PW"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
    }
    let singinPwTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let goToSingUpBt = UIButton().then {
        $0.setTitle("회원이 아니신가요? 회원가입", for: .normal)
        $0.addTarget(singinViewcontroller.self, action: #selector(TabsingupBt), for: .touchUpInside)
    }
    let singinBt = UIButton().then {
            $0.backgroundColor = UIColor(red: 59/255, green: 7/255, blue: 75/255, alpha: 1)
           $0.setTitle("로그인", for: .normal)
            $0.addTarget(singinViewcontroller.self, action: #selector(TabsinginBt), for: .touchUpInside)
       }
        @objc func TabsingupBt() {
            print("회원가입")
        }
        @objc func TabsinginBt() {
            print("로그인 성공!")
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setup()
    }
    func setup() {
        [
            singinlogolb, singinIdlb, singinIdTextField, singinPwTextField, singinPwlb
        ].forEach{ self.view.addSubview($0) }
        singinlogolb.snp.makeConstraints{
            $0.top.equalToSuperview().offset(150)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
            
        }
        singinIdlb.snp.makeConstraints {
            $0.top.equalTo(singinIdTextField).offset(-20)
            $0.left.equalToSuperview().offset(80)
        }
        singinIdTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(350)
            $0.bottom.equalToSuperview().offset(-430)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
        }
        singinPwlb.snp.makeConstraints {
            $0.top.equalTo(singinPwTextField).offset(-20)
            $0.left.equalToSuperview().offset(80)
        }
        singinPwTextField.snp.makeConstraints {
            $0.top.equalTo(singinIdTextField).offset(110)
            $0.bottom.equalTo(singinIdTextField).offset(110)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
        }
//        singinBt.snp.makeConstraints {
//            $0.top.equalTo(singinPwTextField).offset(110)
//            $0.bottom.equalTo(singinPwTextField).offset(110)
//            $0.left.equalToSuperview().offset(75)
//            $0.right.equalToSuperview().offset(-75)
//        }
    }
}
