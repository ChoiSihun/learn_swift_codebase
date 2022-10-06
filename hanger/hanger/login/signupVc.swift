//
//  singupVc.swift
//  hanger
//
//  Created by 최시훈 on 2022/10/01.
//

import UIKit
import SnapKit
import Then

class signupViewcontroller: UIViewController {
    let signuplogolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 60)
        
    }
    
    let signupIdlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
        $0.text = " ID"
    }
    
    let signupIdTextField = UITextField().then {
        $0.placeholder = "  아이디를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
        
    }
    let signupPwlb = UILabel().then {
        $0.text = " PW"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
    }
    let signupPwTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    
    let signupPwCKTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 확인해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    //    let signupCKPwlb = UILabel().then {
    //        $0.text = " PWCheck"
    //        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
    //    }
    let signupBt = UIButton().then {
        $0.backgroundColor = UIColor(red: 59/255, green: 7/255, blue: 75/255, alpha: 1)
        $0.setTitle("회원가입 하기", for: .normal)
        $0.addTarget(signinViewcontroller.self, action: #selector(TabsigninBt), for: .touchUpInside)
    }
    @objc func TabsigninBt() {
        print("로그인 성공!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setup()
    }
    
    func setup() {
        
        [
            signuplogolb, signupIdlb, signupIdTextField, signupPwTextField, signupPwlb, signupPwCKTextField
        ].forEach{ self.view.addSubview($0) }
        signuplogolb.snp.makeConstraints {
            $0.top.equalToSuperview().offset(0)
            $0.bottom.equalToSuperview().offset(-700)
            $0.left.equalToSuperview().offset(0)
            $0.right.equalToSuperview().offset(0)
        }
        
    }
    
}


