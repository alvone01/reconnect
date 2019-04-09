//
//  aboutViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/26/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var phoneLogo: UIImageView!
    
    let navigationBar = UINavigationBar()
    

    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.topItem?.title = "ABOUT US"
        
        navigationItem.title = "ABOUT US"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
