//
//  MainViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/9/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit
import CoreData

class MainViewController: UIViewController, UINavigationControllerDelegate, SegueHandler {
    
    func segueToNext(with identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    
    @IBOutlet weak var notesButtonOut: UIButton!
    
    @IBOutlet weak var songsButtonOut: UIButton!
    
    @IBOutlet weak var schedButtonOut: UIButton!
    @IBOutlet weak var mapButtonOut: UIButton!

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        
        notesButtonOut.titleLabel?.adjustsFontSizeToFitWidth = true
        
        songsButtonOut.titleLabel?.adjustsFontSizeToFitWidth = true
        
        schedButtonOut.titleLabel?.adjustsFontSizeToFitWidth = true
        
        mapButtonOut.titleLabel?.adjustsFontSizeToFitWidth = true
        
        label1.adjustsFontSizeToFitWidth = true
        
        label2.adjustsFontSizeToFitWidth = true
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notesButton(_ sender: Any) {
        
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
  

}
