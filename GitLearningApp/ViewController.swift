//
//  ViewController.swift
//  GitLearningApp
//
//  Created by Đăng Phan on 3/4/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello, Git!")
        
        let button = UIButton(type: .system)
        button.setTitle("Nhấn vào ", for: .normal)
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        view.addSubview(button)
        
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Mở màn 2", for: .normal)
        nextButton.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
        nextButton.addTarget(self, action: #selector(openSecondScreen), for: .touchUpInside)
        view.addSubview(nextButton)
    }

    @objc func handleButtonTap() {
        print("Nút đã được nhấn")
    }
    
    @objc func openSecondScreen() {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

