//
//  ViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/9/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var reconnectTitle: UILabel!
    

    override func viewDidLoad() {
        
        reconnectTitle.adjustsFontSizeToFitWidth = true
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

