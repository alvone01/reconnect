//
//  regisViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/31/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class regisViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func regisButtonPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                
                print("Registration failed, \(error)")
            } else {
                
                SVProgressHUD.dismiss()
                
                print("Registration Successful")
                
                self.performSegue(withIdentifier: "toMain", sender: self)
                
                
            }
            
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                
                print("Login failed, \(error)")
                
            } else {
                
                SVProgressHUD.dismiss()
                
                print("Login successful !")
                
                self.performSegue(withIdentifier: "toMain", sender: self)
                
            }
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
