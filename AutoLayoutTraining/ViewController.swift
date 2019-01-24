//
//  ViewController.swift
//  AutoLayoutTraining
//
//  Created by Alperen Ünal on 23.01.2019.
//  Copyright © 2019 Alperen Ünal. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let text:UITextView = {
        
        let textView=UITextView()
        textView.text = "Login"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        return textView
        
    }()
    let image:UIImageView={
        let image:UIImage = UIImage(named: "Company")!
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let userName:UITextField = {
    
        let textField = UITextField()
        textField.backgroundColor = .gray
        textField.translatesAutoresizingMaskIntoConstraints=false
        return textField
    }()
    let passwordText:UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray
        textField.translatesAutoresizingMaskIntoConstraints=false
        return textField
    }()
    let loginButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints=false
        return button
    }()
    let mainView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupView()
        
    }

    func setupView(){
    
        view.addSubview(mainView)
        mainView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self.view)
        }
        mainView.addSubview(image)
        mainView.addSubview(text)
        mainView.addSubview(userName)
        mainView.addSubview(passwordText)
        mainView.addSubview(loginButton)
        image.snp.makeConstraints { (make) in
            make.width.equalTo(125)
            make.height.equalTo(125)
            make.centerY.equalTo(mainView).offset(-150)
            make.centerX.equalTo(mainView)
            
        }
        text.snp.makeConstraints { (make) in
            make.width.equalTo(image.snp.width)
            make.height.equalTo(40)
            make.centerX.equalTo(mainView)
            make.top.equalTo(image.snp.bottom).offset(20)
        }
        userName.snp.makeConstraints { (make) in
            
            make.top.equalTo(text.snp.bottom).offset(30)
            make.left.equalTo(mainView.snp.left).offset(30)
            make.right.equalTo(mainView.snp.right).offset(-30)
            
        }
        passwordText.snp.makeConstraints { (make) in
            
            make.top.equalTo(userName.snp.bottom).offset(30)
            make.left.equalTo(mainView.snp.left).offset(30)
            make.right.equalTo(mainView.snp.right).offset(-30)
            
        }
        loginButton.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.top.equalTo(passwordText.snp.bottom).offset(50)
            make.left.equalTo(mainView.snp.left).offset(75)
            make.right.equalTo(mainView.snp.right).offset(-75)
        }
    }
    
    
    
    
    
    
}

