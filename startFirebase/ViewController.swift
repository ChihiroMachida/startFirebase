//
//  ViewController.swift
//  startFirebase
//
//  Created by 町田千優 on 2018/01/07.
//  Copyright © 2018年 町田千優. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var TextField: UITextField!
    
    //インスタンス変数
    var DBRef: DatabaseReference!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //インスタンス生成
        DBRef = Database.database().reference()
    }
    
    @IBAction func add(_ sender: AnyObject) {
        
        let data = ["name": TextField.text!]
        DBRef.child("user/01").setValue(data)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

