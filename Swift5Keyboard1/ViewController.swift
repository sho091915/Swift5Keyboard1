//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 佐藤翔馬 on 2020/01/27.
//  Copyright © 2020 Shoma Sato. All rights reserved.
//

import UIKit
//クラスを書くことで、そのクラスにか所属している？利用できるメソッドを使うことができる。
//ただし、Protcol(仕様書)というものをあらかじめ利用したいクラス？に書かなければいけない
//Javaでいうprivateとかpublicとか？
class ViewController: UIViewController,UITextFieldDelegate {
    
    //logo画像のこと
    @IBOutlet weak var logoImageView: UIImageView!
    
    //ユーザーネームを書くテキストフィールド。
    @IBOutlet weak var userNameTextField: UITextField!
    //パスワードを書くテキストフィールド。
    @IBOutlet weak var passWordTextField: UITextField!
    
    //下の方のユーザーネームのラベル
    @IBOutlet weak var userNameLabel: UILabel!
    //下の方のパスワードのラベル
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        userNameTextField.delegate = self
        passWordTextField.delegate = self
        //selfはこのクラス(viewcontrollerクラス)のことを言っている
        //delegetaメソッドをこのクラスで使うよと言っている
        
    }

    @IBAction func login(_ sender: Any) {
        
        //ログインボタンが押されたら、呼ばれる。
        //loginOKという画像に変更する。
        logoImageView.image = UIImage(named: "loginOK")
        
        //下のユーザーネームラベルに、上で入力されたユーザーネームテキストフィールドを代入して反映
        userNameLabel.text = userNameTextField.text
        //下のパスワードラベルに、上で入力されたパスワードテキストフィールドを代入して反映
        passwordLabel.text = passWordTextField.text
    }
    
    //タッチでキーボードを閉じる基本のメソッド！！
    //UIViewControllerクラスに用意されている。
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    //リターンキーを押した時にキーボードを閉じる=iPhoneのreturnキーを押すと呼ばれる。
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //キーボードが閉じるよ
        textField.resignFirstResponder()
        //trueで閉じるようになる。
        return true
    }
    
    
    
    
    
    
    
}

