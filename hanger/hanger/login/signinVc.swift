import UIKit
import SnapKit
import Then

class signinVC: UIViewController {
    let logolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 60)
        $0.font.withSize(60)
    }
    let Idlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
        $0.text = " ID"
    }
    let IdTextField = UITextField().then {
        $0.placeholder = "  아이디를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let Pwlb = UILabel().then {
        $0.text = " PW"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
    }
    let PwTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let signupBt = UIButton().then {
        $0.setTitle("회원이 아니신가요? 회원가입", for: .normal)
        $0.addTarget(signinVC.self, action: #selector(TabsignupBt), for: .touchUpInside)
    }
    let signinBt = UIButton().then {
            $0.backgroundColor = UIColor(red: 59/255, green: 7/255, blue: 75/255, alpha: 1)
           $0.setTitle("로그인", for: .normal)
            $0.addTarget(signinVC.self, action: #selector(TabsigninBt), for: .touchUpInside)
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
            logolb, Idlb, IdTextField, PwTextField, Pwlb, PwTextField
        ].forEach{ self.view.addSubview($0)
        }
        logolb.snp.makeConstraints {
            $0.top.equalToSuperview().offset(50)
            $0.bottom.equalToSuperview().offset(-400)
            $0.left.equalToSuperview().offset(70)
            $0.right.equalToSuperview().offset(0)
        }
        Idlb.snp.makeConstraints {
            $0.top.equalTo(logolb).offset(70)
            $0.bottom.equalTo(logolb).offset(70)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        IdTextField.snp.makeConstraints {
            $0.top.equalTo(logolb).offset(280)
            $0.bottom.equalTo(logolb).offset(-50)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        Pwlb.snp.makeConstraints {
            $0.top.equalTo(IdTextField).offset(55)
            $0.bottom.equalTo(IdTextField).offset(55)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        PwTextField.snp.makeConstraints {
            $0.top.equalTo(IdTextField).offset(100)
            $0.bottom.equalTo(IdTextField).offset(100)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        
//        signinBt.snp.makeConstraints {
//            $0.top.equalTo(PwTextField.snp.bottom).offset(100)
//            $0.bottom.equalTo(PwTextField.snp.bottom).offset(120)
//            $0.left.equalToSuperview().offset(40)
//            $0.right.equalToSuperview().offset(-40)
//        }
//       signupBt.snp.makeConstraints {
//            $0.top.equalTo(IdTextField).offset(100)
//            $0.bottom.equalTo(IdTextField).offset(100)
//            $0.left.equalToSuperview().offset(-80)
//            $0.right.equalToSuperview().offset(-90)
//        }
    }
}
