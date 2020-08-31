//
//  edictViewController.swift
//  iLO
//
//  Created by 张予惟 on 2020/7/29.
//  Copyright © 2020 张予惟. All rights reserved.
//

import UIKit

class edictViewController: UIViewController, UITextFieldDelegate{
    //返回按钮
    var edictGoBackButton:UIButton={
        let buttonView=UIButton()
        buttonView.setImage(UIImage(named: "back2"), for: .normal)
        buttonView.backgroundColor = UIColor.clear
        buttonView.addTarget(
            nil, action: #selector(edictViewController.goBack),
            for: .touchUpInside)
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
    //背景backbround
    let edictBackGroundView:UIImageView={
        let imageView=UIImageView(image:UIImage(named:"background02") )
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    //头像avatarView
    let edictAvatarView:UIImageView={
        let imageView=UIImageView(image:UIImage(named:"avatar") )
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    //昵称文字
    let edictNameContent:UILabel={
        let labelView=UILabel()
        labelView.text="昵称"
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-light", size: 20)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //昵称文字输入
    let edictNameInput:UITextField={
        let textField=UITextField()
        textField.placeholder = "昵称"
        textField.textColor = UIColor.gray
        textField.backgroundColor = UIColor.clear
        textField.clearButtonMode=UITextField.ViewMode.always
        textField.keyboardType = UIKeyboardType.default
        textField.clearButtonMode = .whileEditing
        textField.returnKeyType = .done
        textField.contentVerticalAlignment = .top
       // textField.resignFirstResponder()
        textField.translatesAutoresizingMaskIntoConstraints=false
        return textField
    }()
    
    //一条分割线
     let edictNameuHorizontalLine:UIView={
     let horizontalLine=UIView()
     horizontalLine.backgroundColor=UIColor.lightGray
     horizontalLine.translatesAutoresizingMaskIntoConstraints=false
     return horizontalLine
     }()
    
    //性别
    let edictGenderLabel:UILabel={
        let labelView=UILabel()
        labelView.text="性别"
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-light", size: 20)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //性别分割线
    let edictGenderHorizontalLine:UIView={
        let horizontalLine=UIView()
        horizontalLine.backgroundColor=UIColor.lightGray
        horizontalLine.translatesAutoresizingMaskIntoConstraints=false
        return horizontalLine
    }()
    //三坑
    let edictClassLabel:UILabel={
        let labelView=UILabel()
        labelView.text="三坑"
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-light", size: 20)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //三坑分割线
    let edictClassHorizontalLine:UIView={
        let horizontalLine=UIView()
        horizontalLine.backgroundColor=UIColor.lightGray
        horizontalLine.translatesAutoresizingMaskIntoConstraints=false
        return horizontalLine
    }()
    //本体
    let edictselfLabel:UILabel={
        let labelView=UILabel()
        labelView.text="本体"
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-light", size: 20)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //本体分割线
    let edictSelfHorizontalLine:UIView={
        let horizontalLine=UIView()
        horizontalLine.backgroundColor=UIColor.lightGray
        horizontalLine.translatesAutoresizingMaskIntoConstraints=false
        return horizontalLine
    }()
    //个性签名
    let edictintroductiLabel:UILabel={
        let labelView=UILabel()
        labelView.text=" 个人介绍"
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-light", size: 18)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //签名文字输入
    let edictintroductiInput:UITextField={
        let textField=UITextField()
        textField.placeholder = "介绍木有了"
        textField.textColor = UIColor.gray
        textField.backgroundColor = UIColor.clear
        textField.clearButtonMode=UITextField.ViewMode.always
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = .done
        textField.contentVerticalAlignment = .top
        textField.translatesAutoresizingMaskIntoConstraints=false
        return textField
    }()
    //签名分割线
    let edictintroductiHorizontalLine:UIView={
        let horizontalLine=UIView()
        horizontalLine.backgroundColor=UIColor.lightGray
        horizontalLine.translatesAutoresizingMaskIntoConstraints=false
        return horizontalLine
    }()
    //保存按钮
    var edictSaveButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("保存", for: .normal)
        buttonView.setTitleColor(UIColor.white, for: .normal)
        buttonView.backgroundColor = UIColor.red
       
        //buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 15)
        buttonView.layer.borderWidth = 1.0
        buttonView.layer.borderColor = UIColor.clear.cgColor
        buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        super.viewDidLoad()
        view.addSubview(edictBackGroundView)
        view.addSubview(edictAvatarView)
        view.addSubview(edictNameContent)
        view.addSubview(edictGenderLabel)
        view.addSubview(edictGenderHorizontalLine)
        view.addSubview(edictClassLabel)
        view.addSubview(edictselfLabel)
        view.addSubview(edictintroductiLabel)
        view.addSubview(edictSaveButton)
        view.addSubview(edictGoBackButton)
        view.addSubview(edictNameInput)
        edictNameInput.delegate = self
        view.addSubview(edictNameuHorizontalLine)
        view.addSubview(edictClassHorizontalLine)
        view.addSubview(edictSelfHorizontalLine)
        view.addSubview(edictintroductiHorizontalLine)
        view.addSubview(edictintroductiInput)
      //  self.edictintroductiInput.delegate = self
        setupLayout()
      
    }
    
    //返回按钮
    @objc func goBack() {
        self.dismiss(animated: true, completion:nil)
    }
    //键盘输入
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 結束編輯 把鍵盤隱藏起來
        self.view.endEditing(true)
        print("hello world")
        
        return true
        
    }
   
    private func setupLayout(){
        //返回按钮
        edictGoBackButton.leftAnchor.constraint(equalTo:view.leftAnchor,constant:20).isActive=true
        edictGoBackButton.topAnchor.constraint(equalTo:view.topAnchor,constant:25).isActive=true
        edictGoBackButton.heightAnchor.constraint(equalToConstant:40).isActive=true
        edictGoBackButton.widthAnchor.constraint(equalToConstant:40).isActive=true
        // let fullScreenSize = UIScreen.main.bounds.size
        //背景backbround
        edictBackGroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        edictBackGroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
        //    backGroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        edictBackGroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive=true
        edictBackGroundView.heightAnchor.constraint(equalToConstant:(fullScreenSize.height)/3).isActive=true
        //头像avatar
        edictAvatarView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        edictAvatarView.centerYAnchor.constraint(equalTo: edictBackGroundView.bottomAnchor).isActive=true
        edictAvatarView.widthAnchor.constraint(equalToConstant:125).isActive=true
        edictAvatarView.heightAnchor.constraint(equalToConstant:125).isActive=true
        //昵称文字
        edictNameContent.topAnchor.constraint(equalTo: edictAvatarView.bottomAnchor,constant:10).isActive=true
        edictNameContent.leftAnchor.constraint(equalTo: view.leftAnchor,constant:30).isActive=true
        edictNameContent.widthAnchor.constraint(equalToConstant:50).isActive=true
        edictNameContent.heightAnchor.constraint(equalToConstant:40).isActive=true
        ////昵称文字输入
        edictNameInput.topAnchor.constraint(equalTo: edictNameContent.topAnchor,constant:10).isActive=true
        edictNameInput.bottomAnchor.constraint(equalTo: edictNameContent.bottomAnchor,constant:10).isActive=true
        edictNameInput.leftAnchor.constraint(equalTo: edictNameContent.rightAnchor,constant:5).isActive=true
        edictNameInput.widthAnchor.constraint(equalToConstant:2*(fullScreenSize.width)/3).isActive=true
        //输入框的线
        edictNameuHorizontalLine.topAnchor.constraint(equalTo:edictNameInput.bottomAnchor)
            .isActive=true
        edictNameuHorizontalLine.rightAnchor.constraint(equalTo:edictNameInput.rightAnchor)
            .isActive=true
        edictNameuHorizontalLine.heightAnchor.constraint(equalToConstant:2).isActive=true
        edictNameuHorizontalLine.leftAnchor.constraint(equalTo:edictNameInput.leftAnchor)
            .isActive=true
        //性别
        edictGenderLabel.topAnchor.constraint(equalTo:edictNameContent.bottomAnchor,constant:15).isActive=true
        edictGenderLabel.leftAnchor.constraint(equalTo:edictNameContent.leftAnchor).isActive=true
        edictGenderLabel.widthAnchor.constraint(equalToConstant:50).isActive=true
        edictGenderLabel.heightAnchor.constraint(equalToConstant:45).isActive=true
        //S性别分界线
        edictGenderHorizontalLine.topAnchor.constraint(equalTo:edictGenderLabel.bottomAnchor
            ,constant:10).isActive=true
        edictGenderHorizontalLine.rightAnchor.constraint(equalTo:edictNameuHorizontalLine
        .rightAnchor).isActive=true
        edictGenderHorizontalLine.heightAnchor.constraint(equalToConstant:2).isActive=true
        edictGenderHorizontalLine.leftAnchor.constraint(equalTo:edictGenderLabel.rightAnchor,
                                                    constant:5).isActive=true
        //三坑
        edictClassLabel.topAnchor.constraint(equalTo:edictGenderLabel.bottomAnchor,constant:8).isActive=true
        edictClassLabel.leftAnchor.constraint(equalTo:edictGenderLabel.leftAnchor)
            .isActive=true
        edictClassLabel.widthAnchor.constraint(equalToConstant:50).isActive=true
        edictClassLabel.heightAnchor.constraint(equalToConstant:45).isActive=true
        //三坑分界线
        edictClassHorizontalLine.topAnchor.constraint(equalTo:edictClassLabel.bottomAnchor
            ,constant:10).isActive=true
        edictClassHorizontalLine.rightAnchor.constraint(equalTo:edictNameuHorizontalLine
            .rightAnchor).isActive=true
        edictClassHorizontalLine.heightAnchor.constraint(equalToConstant:2).isActive=true
        edictClassHorizontalLine.leftAnchor.constraint(equalTo:edictClassLabel.rightAnchor,
                                                        constant:5).isActive=true
        //本体
        edictselfLabel.topAnchor.constraint(equalTo:edictClassLabel.bottomAnchor,constant:18).isActive=true
        edictselfLabel.leftAnchor.constraint(equalTo:edictGenderLabel.leftAnchor)
            .isActive=true
        edictselfLabel.widthAnchor.constraint(equalToConstant:50).isActive=true
        edictselfLabel.heightAnchor.constraint(equalToConstant:45).isActive=true
        //本体分界线
        edictSelfHorizontalLine.topAnchor.constraint(equalTo:edictselfLabel.bottomAnchor
            ,constant:7).isActive=true
        edictSelfHorizontalLine.rightAnchor.constraint(equalTo:edictNameuHorizontalLine
            .rightAnchor).isActive=true
        edictSelfHorizontalLine.heightAnchor.constraint(equalToConstant:2).isActive=true
        edictSelfHorizontalLine.leftAnchor.constraint(equalTo:edictselfLabel.rightAnchor,
                                                       constant:5).isActive=true
        //个人介绍
        edictintroductiLabel.topAnchor.constraint(equalTo:edictselfLabel.bottomAnchor,constant:23).isActive=true
        edictintroductiLabel.centerXAnchor.constraint(equalTo:edictClassLabel.centerXAnchor)
            .isActive=true
        edictintroductiLabel.widthAnchor.constraint(equalToConstant:95).isActive=true
        edictintroductiLabel.heightAnchor.constraint(equalToConstant:45).isActive=true
        //个人介绍分界线
        edictintroductiHorizontalLine.topAnchor.constraint(equalTo:edictintroductiLabel.bottomAnchor
            ,constant:7).isActive=true
        edictintroductiHorizontalLine.rightAnchor.constraint(equalTo:edictNameuHorizontalLine
            .rightAnchor).isActive=true
        edictintroductiHorizontalLine.heightAnchor.constraint(equalToConstant:2).isActive=true
        edictintroductiHorizontalLine.leftAnchor.constraint(equalTo:edictNameuHorizontalLine
            .leftAnchor).isActive=true
       // edictintroductiHorizontalLine.leftAnchor.constraint(equalTo:edictintroductiLabel
       //     .rightAnchor).isActive=true
        //
        edictintroductiInput.topAnchor.constraint(equalTo: edictintroductiLabel.topAnchor,constant:10).isActive=true
        edictintroductiInput.bottomAnchor.constraint(equalTo:edictintroductiLabel.bottomAnchor,
                                                     constant:10).isActive=true
        edictintroductiInput.leftAnchor.constraint(equalTo: edictintroductiLabel.rightAnchor,constant:5).isActive=true
        edictintroductiInput.widthAnchor.constraint(equalToConstant:2*(fullScreenSize.width)/3).isActive=true
 
        //保存按钮
        edictSaveButton.topAnchor.constraint(equalTo:edictintroductiLabel.bottomAnchor,constant:33).isActive=true
        edictSaveButton.centerXAnchor.constraint(equalTo:edictAvatarView.centerXAnchor)
            .isActive=true
        edictSaveButton.widthAnchor.constraint(equalToConstant:(fullScreenSize.width)/2).isActive=true
        edictSaveButton.heightAnchor.constraint(equalToConstant:30).isActive=true
        //
        
        
    }
 
}
