//
//  ViewController.swift
//  iLO
//
//  Created by 张予惟 on 2020/7/6.
//  Copyright © 2020 张予惟. All rights reserved.
//

import UIKit
let fullScreenSize = UIScreen.main.bounds.size
class ViewController: UIViewController {
    //背景backbround
    let backGroundView:UIImageView={
        let imageView=UIImageView(image:UIImage(named:"background02") )
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    //头像avatar
    let avatarView:UIImageView={
        let imageView=UIImageView(image:UIImage(named:"avatar") )
        imageView.translatesAutoresizingMaskIntoConstraints=false
        return imageView
    }()
    //点赞数likeCount数字
    let likeCountNumber:UILabel={
        var likeCount="0"
        let labelView=UILabel()
        labelView.text=likeCount
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 23)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //点赞数likeCount文字
    let likeCountContent:UILabel={
        let labelView=UILabel()
        labelView.text="获赞"
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 15)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //关注数follow数字
    let followCountNumber:UILabel={
        var followCount="0"
        let labelView=UILabel()
        labelView.text=followCount
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 23)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //关注数follow文字
    let followCountContent:UILabel={
        let labelView=UILabel()
        labelView.text="关注"
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 15)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //粉丝数fans数字
    let fansCountNumber:UILabel={
        var fansCount="0"
        let labelView=UILabel()
        labelView.text=fansCount
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 23)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //粉丝数fans文字
    let fansCountContent:UILabel={
        let labelView=UILabel()
        labelView.text="粉丝"
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 15)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //来访visited数字
    let visitedCountNumber:UILabel={
        var visitedCount="0"
        let labelView=UILabel()
        labelView.text=visitedCount
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 23)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //来访visited文字
    let visitedCountContent:UILabel={
        let labelView=UILabel()
        labelView.text="来访"
        labelView.textAlignment = .center
        labelView.font=UIFont(name: "Helvetica-Light", size: 15)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //昵称文字
    let nameContent:UILabel={
        var nameContent="iLo"
        let labelView=UILabel()
        labelView.text=nameContent
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-Bold", size: 25)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
   //编辑文字按钮edictButton
  
    var edictButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("编辑资料", for: .normal)
        buttonView.setTitleColor(UIColor.black, for: .normal)
        buttonView.backgroundColor = UIColor.clear
        //buttonView.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 20)
        buttonView.layer.borderWidth = 1.0
        buttonView.layer.borderColor = UIColor.black.cgColor
        buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.addTarget(
            nil, action: #selector(ViewController.goArticle),
            for: .touchUpInside)
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
    
    
    
    //身份介绍
    let idContent:UILabel={
        var idContent="Lo娘 学生党"
        let labelView=UILabel()
        labelView.text=idContent
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-Light", size: 13)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    //个性签名
    let statusContent:UILabel={
        var statusContent="签名被吃掉了"
        let labelView=UILabel()
        labelView.text=statusContent
        labelView.textAlignment = .left
        labelView.font=UIFont(name: "Helvetica-Light", size: 16)
        labelView.textColor=UIColor.black
        labelView.backgroundColor = UIColor.clear
        labelView.translatesAutoresizingMaskIntoConstraints=false
        return labelView
    }()
    
/*    let titles:YCTitleStyle = {
       let titlesContent = ["笔记", "动态", "衣柜", "喜欢"]
       let style = YCTitleStyle()
       //可以滚动
       style.isScrollEnable = true
       //显示底部滚动条
      style.isShowBottomLine = true
      //进行缩放
      style.isNeedScale = true
      //显示遮盖
      style.isShowCover = true
      return style
   }()
 */
    //一条分割线
    /*   let upHorizontalLine:UIView={
     let horizontalLine=UIView()
     horizontalLine.backgroundColor=UIColor.lightGray
     horizontalLine.translatesAutoresizingMaskIntoConstraints=false
     return horizontalLine
     }()
     */
    //笔记按钮
/*    var noteButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("笔记", for: .normal)
        buttonView.setTitleColor(UIColor.black, for: .normal)
        buttonView.backgroundColor = UIColor.clear
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 20)
        //buttonView.layer.borderWidth = 1.0
        //buttonView.layer.borderColor = UIColor.black.cgColor
        //buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        buttonView.addTarget(nil, action: #selector(ViewController.goNoteView),
                             for: .touchUpInside)
        return buttonView
    }()
    //动态按钮
    var doingButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("动态", for: .normal)
        buttonView.setTitleColor(UIColor.black, for: .normal)
        buttonView.backgroundColor = UIColor.clear
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 20)
        //buttonView.layer.borderWidth = 1.0
        //buttonView.layer.borderColor = UIColor.black.cgColor
        //buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
    //衣柜
    var closetButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("衣橱", for: .normal)
        buttonView.setTitleColor(UIColor.black, for: .normal)
        buttonView.backgroundColor = UIColor.clear
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 20)
        //buttonView.layer.borderWidth = 1.0
        //buttonView.layer.borderColor = UIColor.black.cgColor
        //buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
    //喜欢按钮
    var likeButton:UIButton={
        let buttonView=UIButton()
        buttonView.setTitle("喜欢", for: .normal)
        buttonView.setTitleColor(UIColor.black, for: .normal)
        buttonView.backgroundColor = UIColor.clear
        buttonView.titleLabel?.font=UIFont(name: "Helvetica", size: 20)
        //buttonView.layer.borderWidth = 1.0
        //buttonView.layer.borderColor = UIColor.black.cgColor
        //buttonView.layer.cornerRadius = 10.0
        buttonView.isEnabled = true
        buttonView.translatesAutoresizingMaskIntoConstraints=false
        return buttonView
    }()
 */
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backGroundView)
        view.addSubview(avatarView)
        view.addSubview(likeCountNumber)
        view.addSubview(likeCountContent)
        view.addSubview(followCountNumber)
        view.addSubview(followCountContent)
        view.addSubview(fansCountNumber)
        view.addSubview(fansCountContent)
        view.addSubview(visitedCountNumber)
        view.addSubview(visitedCountContent)
        view.addSubview(nameContent)
        view.addSubview(edictButton)
        view.addSubview(idContent)
        view.addSubview(statusContent)
   //     view.addSubview(titles)
    /*  view.addSubview(upHorizontalLine)
        view.addSubview(noteButton)
        view.addSubview(doingButton)
        view.addSubview(closetButton)
        view.addSubview(likeButton)
    */
        setupLayout()
        
        
        
        
        let titles = ["笔记", "动态", "衣柜", "喜欢"]
        let style = YCTitleStyle()
        //可以滚动
        style.isScrollEnable = false
        //显示底部滚动条
        style.isShowBottomLine = true
        //进行缩放
        style.isNeedScale = true
        //显示遮盖
        style.isShowCover = false
  
        var childVcs = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor
           // vc.view.backgroundColor = UIColor.black
            childVcs.append(vc)
        }
        
       
        
        // pageView的frame
        let pageFrame = CGRect(x: 0, y: (fullScreenSize.height)/2+25,width: fullScreenSize.width, height: view.bounds.height )
        
        // 创建YCPageView,并且添加到控制器的view中
        let pageView = YCPageView(frame: pageFrame, titles: titles, childVcs: childVcs, parentVc: self, style : style)
        view.addSubview(pageView)
        //pageView.translatesAutoresizingMaskIntoConstraints=false
       // pageView.topAnchor.constraint(equalTo:statusContent.bottomAnchor).isActive=true
       // pageView.centerXAnchor.constraint(equalTo:avatarView.rightAnchor).isActive=true
      //  pageView.widthAnchor.constraint(equalToConstant:50).isActive=true
      //  pageView.heightAnchor.constraint(equalToConstant:30).isActive=true

        
       
        
       
       
    }
    
/*
    @objc func goNoteView() {
        let noteVC = noteViewController()
        self.present(noteVC, animated: true, completion: nil)
    }
*/
    
    @objc func goArticle() {
        self.present(edictViewController(), animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    private func setupLayout(){
       // let fullScreenSize = UIScreen.main.bounds.size
        //背景backbround
        backGroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        backGroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive=true
    //    backGroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive=true
        backGroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive=true
        backGroundView.heightAnchor.constraint(equalToConstant:7*(fullScreenSize.height)/24).isActive=true
        //头像avatar
        avatarView.topAnchor.constraint(equalTo: backGroundView.bottomAnchor,constant:-40).isActive=true
        avatarView.leftAnchor.constraint(equalTo: view.leftAnchor,constant:20).isActive=true
        avatarView.widthAnchor.constraint(equalToConstant:100).isActive=true
        avatarView.heightAnchor.constraint(equalToConstant:100).isActive=true
        //点赞数likeCount文字
       // likeCountContent.bottomAnchor.constraint(equalTo:avatarView.bottomAnchor)
       // .isActive=true
        likeCountContent.leftAnchor.constraint(equalTo:avatarView.rightAnchor,constant:25).isActive=true
        likeCountContent.bottomAnchor.constraint(equalTo:avatarView.bottomAnchor,constant:5).isActive=true
        likeCountContent.widthAnchor.constraint(equalToConstant:35).isActive=true
        likeCountContent.heightAnchor.constraint(equalToConstant:30).isActive=true
        //点赞数likeCount数字
        likeCountNumber.topAnchor.constraint(equalTo:backGroundView.bottomAnchor)
            .isActive=true
        likeCountNumber.bottomAnchor.constraint(equalTo:likeCountContent.bottomAnchor,
                                                constant:-10).isActive=true
        likeCountNumber.centerXAnchor.constraint(equalTo:likeCountContent.centerXAnchor)
            .isActive=true
        likeCountNumber.widthAnchor.constraint(equalToConstant:35).isActive=true
        //关注数follow文字
        followCountContent.centerYAnchor.constraint(equalTo:likeCountContent.centerYAnchor)
            .isActive=true
        followCountContent.widthAnchor.constraint(equalToConstant:35).isActive=true
        followCountContent.heightAnchor.constraint(equalToConstant:30).isActive=true
        followCountContent.leftAnchor.constraint(equalTo:likeCountContent.rightAnchor,
                                                constant:20).isActive=true
        //关注数follow数字
        followCountNumber.topAnchor.constraint(equalTo:backGroundView.bottomAnchor)
            .isActive=true
        followCountNumber.bottomAnchor.constraint(equalTo:followCountContent.bottomAnchor,
                                                constant:-10).isActive=true
        followCountNumber.centerXAnchor.constraint(equalTo:followCountContent.centerXAnchor)
            .isActive=true
        followCountNumber.widthAnchor.constraint(equalToConstant:35).isActive=true
        //粉丝数fans文字
      //  fansCountContent.centerYAnchor.constraint(equalTo:likeCountContent.centerYAnchor)
     //       .isActive=true、
        fansCountContent.centerYAnchor.constraint(equalTo:likeCountContent.centerYAnchor)
            .isActive=true
        fansCountContent.widthAnchor.constraint(equalToConstant:35).isActive=true
        fansCountContent.heightAnchor.constraint(equalToConstant:30).isActive=true
        fansCountContent.leftAnchor.constraint(equalTo:followCountContent.rightAnchor,
                                                 constant:20).isActive=true
        //粉丝数fans数字fansCountNumber
        fansCountNumber.topAnchor.constraint(equalTo:backGroundView.bottomAnchor)
            .isActive=true
        fansCountNumber.bottomAnchor.constraint(equalTo:fansCountContent.bottomAnchor,
                                                  constant:-10).isActive=true
        fansCountNumber.centerXAnchor.constraint(equalTo:fansCountContent.centerXAnchor)
            .isActive=true
        fansCountNumber.widthAnchor.constraint(equalToConstant:35).isActive=true
        //来访visited文字
        visitedCountContent.centerYAnchor.constraint(equalTo:likeCountContent.centerYAnchor)
            .isActive=true
        visitedCountContent.widthAnchor.constraint(equalToConstant:35).isActive=true
        visitedCountContent.heightAnchor.constraint(equalToConstant:30).isActive=true
        visitedCountContent.leftAnchor.constraint(equalTo:fansCountContent.rightAnchor,
                                                 constant:20).isActive=true
    
        //来访visited数字
        visitedCountNumber.topAnchor.constraint(equalTo:backGroundView.bottomAnchor)
            .isActive=true
        visitedCountNumber.bottomAnchor.constraint(equalTo:visitedCountContent.bottomAnchor,
                                                constant:-10).isActive=true
        visitedCountNumber.centerXAnchor.constraint(equalTo:visitedCountContent.centerXAnchor)
            .isActive=true
        visitedCountNumber.widthAnchor.constraint(equalToConstant:35).isActive=true
        //昵称
        nameContent.topAnchor.constraint(equalTo: likeCountContent.bottomAnchor,constant:5).isActive=true
        nameContent.leftAnchor.constraint(equalTo: avatarView.leftAnchor,constant:-10).isActive=true
        nameContent.widthAnchor.constraint(equalToConstant:0.45*(fullScreenSize.width)).isActive=true
        nameContent.heightAnchor.constraint(equalToConstant:40).isActive=true
        //编辑按钮
        edictButton.topAnchor.constraint(equalTo:nameContent.topAnchor,constant:5).isActive=true
        edictButton.bottomAnchor.constraint(equalTo: nameContent.bottomAnchor,constant:-5).isActive=true
        edictButton.widthAnchor.constraint(equalToConstant:0.25*(fullScreenSize.width)).isActive=true
        edictButton.leftAnchor.constraint(equalTo: followCountContent.centerXAnchor,constant:
            -5).isActive=true
        //身份介绍
        idContent.topAnchor.constraint(equalTo:nameContent.bottomAnchor).isActive=true
        idContent.leftAnchor.constraint(equalTo:nameContent.leftAnchor).isActive=true
        idContent.widthAnchor.constraint(equalToConstant:0.45*(fullScreenSize.width)).isActive=true
        idContent.heightAnchor.constraint(equalToConstant:35).isActive=true
        //个性签名
        statusContent.topAnchor.constraint(equalTo:idContent.bottomAnchor,constant:-5).isActive=true
        statusContent.leftAnchor.constraint(equalTo:nameContent.leftAnchor).isActive=true
        statusContent.widthAnchor.constraint(equalToConstant:0.45*(fullScreenSize.width)).isActive=true
        statusContent.heightAnchor.constraint(equalToConstant:35).isActive=true
        
     /*   let upMaxY = statusContent.frame.maxY
      print("maxY is \(upMaxY)")
     */
        //分割线
     /*   upHorizontalLine.topAnchor.constraint(equalTo:statusContent.bottomAnchor).isActive=true
        upHorizontalLine.widthAnchor.constraint(equalToConstant:fullScreenSize.width).isActive=true
        upHorizontalLine.heightAnchor.constraint(equalToConstant:1).isActive=true
      */
        //笔记按钮
  /*     noteButton.topAnchor.constraint(equalTo:statusContent.bottomAnchor,constant:
        -5).isActive=true
        noteButton.centerXAnchor.constraint(equalTo:avatarView.rightAnchor).isActive=true
        noteButton.widthAnchor.constraint(equalToConstant:50).isActive=true
        noteButton.heightAnchor.constraint(equalToConstant:30).isActive=true
        //动态按钮
        doingButton.topAnchor.constraint(equalTo:statusContent.bottomAnchor,constant:
        -5).isActive=true
        doingButton.leftAnchor.constraint(equalTo:noteButton.rightAnchor,constant:
            5).isActive=true
        doingButton.widthAnchor.constraint(equalToConstant:50).isActive=true
        doingButton.heightAnchor.constraint(equalToConstant:30).isActive=true
        //衣橱按钮
        closetButton.topAnchor.constraint(equalTo:statusContent.bottomAnchor,constant:
            -5).isActive=true
        closetButton.leftAnchor.constraint(equalTo:doingButton.rightAnchor,constant:
            5).isActive=true
        closetButton.widthAnchor.constraint(equalToConstant:50).isActive=true
        closetButton.heightAnchor.constraint(equalToConstant:30).isActive=true
        //喜欢按钮
        likeButton.topAnchor.constraint(equalTo:statusContent.bottomAnchor,constant:
            -5).isActive=true
        likeButton.leftAnchor.constraint(equalTo:closetButton.rightAnchor,constant:
            5).isActive=true
        likeButton.widthAnchor.constraint(equalToConstant:50).isActive=true
        likeButton.heightAnchor.constraint(equalToConstant:30).isActive=true
 */
       

    }

}

