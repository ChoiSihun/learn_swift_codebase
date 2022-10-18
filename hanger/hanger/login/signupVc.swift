//
//  singupVc.swift
//  hanger
//
//  Created by 최시훈 on 2022/10/01.
//

import UIKit
import SnapKit
import Then

class signupVC: UIViewController {
    let logolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 60)
        
    }
    let namelb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
        $0.text = " NAME"
    }
    let nameTextField = UITextField().then {
        $0.placeholder = "이름을 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
        
    }
    
    let Idlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
        $0.text = " ID"
    }
    
    let IdTextField = UITextField().then {
        $0.placeholder = "아이디를 입력해주세요"
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
        $0.placeholder = "비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    
    let PwCKTextField = UITextField().then {
        $0.placeholder = "비밀번호를 확인해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    let CKPwlb = UILabel().then {
        $0.text = " PWCheck"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 20)
    }
    let signupBt = UIButton().then {
        $0.setTitle("회원가입 하기", for: .normal)
        $0.addTarget(self, action: #selector(TabsignupBt), for: .touchUpInside)
        
    }
    @objc func TabsignupBt() {
        print("회 원 가 입 성 공 할 까 말 까")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        signupBt.layer.cornerRadius = 30
        signupBt.clipsToBounds = true
        setup()
    }
    
    func setup() {
        
        [logolb, namelb, nameTextField, Idlb, IdTextField, PwTextField, Pwlb, Pwlb, CKPwlb, PwCKTextField, signupBt
        ].forEach{ self.view.addSubview($0) }
        logolb.snp.makeConstraints {
            $0.top.equalToSuperview().offset(50)
            $0.bottom.equalToSuperview().offset(-500)
            $0.left.equalToSuperview().offset(70)
            $0.right.equalToSuperview().offset(0)
        }
        namelb.snp.makeConstraints {
            $0.top.equalTo(logolb).offset(125)
            $0.bottom.equalTo(logolb).offset(55)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        nameTextField.snp.makeConstraints {
            $0.top.equalTo(logolb).offset(250)
            $0.bottom.equalTo(logolb).offset(20)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        Idlb.snp.makeConstraints {
            $0.top.equalTo(nameTextField).offset(55)
            $0.bottom.equalTo(nameTextField).offset(55)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        IdTextField.snp.makeConstraints {
            $0.top.equalTo(nameTextField).offset(100)
            $0.bottom.equalTo(nameTextField).offset(100)
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
        CKPwlb.snp.makeConstraints {
            $0.top.equalTo(PwTextField).offset(55)
            $0.bottom.equalTo(PwTextField).offset(55)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        PwCKTextField.snp.makeConstraints {
            $0.top.equalTo(PwTextField).offset(100)
            $0.bottom.equalTo(PwTextField).offset(100)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
        signupBt.snp.makeConstraints {
            $0.top.equalTo(PwCKTextField).offset(30)
            $0.bottom.equalTo(PwCKTextField).offset(30)
            $0.left.equalToSuperview().offset(40)
            $0.right.equalToSuperview().offset(-40)
        }
    } //Auto Layout
    
}
