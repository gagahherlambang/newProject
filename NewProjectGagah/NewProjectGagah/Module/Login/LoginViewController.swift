//
//  LoginViewController.swift
//  NewProjectGagah
//
//  Created by Gagah on 08/05/20.
//  Copyright © 2020 Gagah. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        self.title = "LOGIN"
        super.viewDidLoad()
    }
    
    @IBAction func onTapButton(_ sender: Any) {
        let emailText = email.text
        let pass = password.text
        
        if emailText?.isEmpty ?? true && pass?.isEmpty ?? true {
            let alert = UIAlertController(title: "Error", message: "Email atau password tidak boleh kosong.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        } else {
            
            User.shared.profile?.email = emailText
            User.shared.profile?.password = pass
            
            let view = Builder.shared.mainHomeTabBar()
            DispatchQueue.main.async {
                self.present(view, animated: true, completion: nil)
            }
        }
    }

}
