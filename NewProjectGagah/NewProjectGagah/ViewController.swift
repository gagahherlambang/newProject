//
//  ViewController.swift
//  NewProjectGagah
//
//  Created by Gagah on 07/05/20.
//  Copyright © 2020 Gagah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        self.title = "LOGIN"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onTapEnter(_ sender: Any) {
        onClickEnter()
    }
    
    func onClickEnter() {
        let emailText = email.text
        let pass = password.text
        
        if emailText != "test@mail.com" && pass != "password" {
            let alert = UIAlertController(title: "Error", message: "Email atau password salah.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        } else {
            email.text = ""
            password.text = ""
            
            let myTab = self.storyboard?.instantiateViewController(withIdentifier: "myTabBar") as! UITabBarController
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.window?.rootViewController = myTab
        }
        
    }

}

