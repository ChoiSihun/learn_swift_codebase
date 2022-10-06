//
//  ViewController.swift
//  hanger
//
//  Created by 최시훈 on 2022/09/29.
//

import UIKit
import SnapKit //레이아웃을 쉽게 짤 수 있는 라이브러리
import Then //코드의 길이를 줄여주는 라이브러리

class UIVeiwController: UIViewController {

//    let testButton = UIButton().then {
//        $0.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
//       $0.setTitle("테스트", for: .normal)
//        $0.addTarget(TestViewController.self, action: #selector(TabTestButton), for: .touchUpInside)
//   }
////버튼 만드는 코드
//   @objc func TabTestButton() {
//        print("버튼을 눌렀습니다.")
//
//   }
//    let testTextfield = UITextField().then {
//        $0.placeholder = "비밀번호를 입력해주세요"
//        $0.font = .systemFont(ofSize: 14.0, weight: .medium)
//        $0.borderStyle = .roundedRect
//        $0.autocapitalizationType = .none
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        //setup()
        
        
    }
    
//    func setup() {
//
//        [
//            testButton,
//            testTextfield
//
//        ].forEach{ self.view.addSubview($0) }
//
//        testButton.snp.makeConstraints {
//            $0.top.equalToSuperview().offset(400)
//            $0.bottom.equalToSuperview().offset(-400)
//            $0.left.equalToSuperview().offset(100)
//            $0.right.equalToSuperview().offset(-100)
//        }
//
//        testTextfield.snp.makeConstraints {
//            $0.bottom.equalTo(testButton).offset(40)
//            $0.left.equalToSuperview().offset(100)
//            $0.right.equalToSuperview().offset(-100)
//        }
//
//    }
    



}

