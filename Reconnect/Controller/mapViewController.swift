//
//  mapViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/25/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var Map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var location = CLLocationCoordinate2DMake(-6.6709051, 106.879586)
        
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        
        annotation.title = "3G Resort"
        
        annotation.subtitle = "Retret Korem GKY Puri"
        
        Map.addAnnotation(annotation)
        
        
        var span = MKCoordinateSpanMake(0.002, 0.002)
        
        var region = MKCoordinateRegionMake(location, span)
        
        Map.setRegion(region, animated: true)

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
