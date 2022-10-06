//
//  singupVc.swift
//  hanger
//
//  Created by 최시훈 on 2022/10/01.
//

import UIKit
import SnapKit
import Then

class singupViewcontroller: UIViewController {
    let singuplogolb = UILabel().then {
        $0.text = "Hanger"
        $0.font = UIFont(name: "JuliusSansOneRegular", size: 60)
        $0.font.withSize(60)
    }
    
    let singupIdlb = UILabel().then {
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
        $0.text = " ID"
        
    }
       
    let singupIdTextField = UITextField().then {
        $0.placeholder = "  아이디를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
        
    }
    let singupPwlb = UILabel().then {
        $0.text = " PW"
        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
    }
    let singupPwTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 입력해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
    
    let singupPwCKTextField = UITextField().then {
        $0.placeholder = "  비밀번호를 확인해주세요"
        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
        $0.autocapitalizationType = .none
        $0.backgroundColor = UIColor(red: 220/255, green: 220/225, blue: 220/225, alpha: 1)
        $0.layer.cornerRadius = 25
    }
//    let singupCKPwlb = UILabel().then {
//        $0.text = " PWCheck"
//        $0.font = UIFont(name: "JuliusSansOne-Regular", size: 30)
//    }
    let singupBt = UIButton().then {
            $0.backgroundColor = UIColor(red: 59/255, green: 7/255, blue: 75/255, alpha: 1)
           $0.setTitle("회원가입 하기", for: .normal)
            $0.addTarget(singinViewcontroller.self, action: #selector(TabsinginBt), for: .touchUpInside)
    }
    @objc func TabsinginBt() {
        print("로그인 성공!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setup()
    }
    
    func setup() {

        [
            singuplogolb, singupIdlb, singupIdTextField, singupPwTextField, singupPwlb, singupPwCKTextField
        ].forEach{ self.view.addSubview($0) }
        singuplogolb.snp.makeConstraints{
            $0.top.equalToSuperview().offset(130)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)

        }
        singupIdlb.snp.makeConstraints {
            $0.top.equalTo(singupIdTextField).offset(-20)
            $0.left.equalToSuperview().offset(80)
      }

        singupIdTextField.snp.makeConstraints {
            $0.top.equalToSuperview().offset(200)
            $0.bottom.equalToSuperview().offset(-580)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
        }
        singupPwlb.snp.makeConstraints {
            $0.top.equalTo(singupPwTextField).offset(-20)
            $0.left.equalToSuperview().offset(80)
        }
        singupPwTextField.snp.makeConstraints {
            $0.top.equalTo(singupIdTextField).offset(110)
            $0.bottom.equalTo(singupIdTextField).offset(110)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
        
        }
        singupPwCKTextField.snp.makeConstraints {
            $0.top.equalTo(singupPwTextField).offset(110)
            $0.bottom.equalTo(singupPwTextField).offset(110)
            $0.left.equalToSuperview().offset(75)
            $0.right.equalToSuperview().offset(-75)
        }
//        singupCKPwlb.snp.makeConstraints {
//            $0.top.equalTo(singupPwCKTextField).offset(-20)
//            $0.bottom.equalTo(singupPwCKTextField).offset(0)
//            $0.left.equalToSuperview().offset(80)
        //    $0.right.equalToSuperview().offset(80)
        //        }
//        singupBt.snp.makeConstraints {
//            $0.top.equalTo(singupIdTextField).offset(220)
//            $0.bottom.equalTo(singupIdTextField).offset(220)
//            $0.left.equalToSuperview().offset(75)
//            $0.right.equalToSuperview().offset(-75)
//        }
        
        
        

    }

}


