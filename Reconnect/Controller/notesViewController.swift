//
//  notesViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/10/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit
import CoreData

protocol SegueHandler: class {
    func segueToNext(with identifier: String)
}

class notesViewController: UIViewController, SegueHandler {
    
    


    @IBOutlet weak var openingButtonOut: UIButton!
    
    
    @IBAction func openingButton(_ sender: UIButton) {
        
        segueNumber = 0
        noteName = "Opening"
        performSegue(withIdentifier: "toContent", sender: self)

    }
    
    @IBAction func closingButton(_ sender: UIButton) {
        
        segueNumber = 1
        noteName = "Closing"
        performSegue(withIdentifier: "toContent", sender: self)
    }
    
    @IBAction func session1Button(_ sender: UIButton) {
        
        segueNumber = 2
        noteName = "Session 1"
        performSegue(withIdentifier: "toContent", sender: self)
        
    }
    
    @IBAction func session2Button(_ sender: UIButton) {
        
        segueNumber = 3
        noteName = "Session 2"
        performSegue(withIdentifier: "toContent", sender: self)
        
    }
    
    @IBAction func callingButton(_ sender: UIButton) {
        
        segueNumber = 4
        noteName = "Calling"
        performSegue(withIdentifier: "toContent", sender: self)
        
    }
    
    @IBAction func morning1Button(_ sender: UIButton) {
        
        segueNumber = 5
        noteName = "Morning Devotion 1"
        performSegue(withIdentifier: "toContent", sender: self)
        
    }
    
    @IBAction func morning2Button(_ sender: UIButton) {
        
        segueNumber = 6
        noteName = "Morning Devotion 2"
        performSegue(withIdentifier: "toContent", sender: self)
        
    }
    
    
    
    
    
    
    var segueNumber:Int?
    
    var noteName: String?
    
    
    func segueToNext(with identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        openingButtonOut.titleLabel?.adjustsFontSizeToFitWidth = true

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var openingButton: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  
        let destinationVC = segue.destination as! contentViewController
        
        destinationVC.noteNumber = segueNumber
        
        destinationVC.noteName = noteName
            
        
        
        
        
        
    }
    

    
    
    
    

}
