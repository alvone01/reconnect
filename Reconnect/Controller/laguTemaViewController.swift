//
//  laguTemaViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/30/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit

class laguTemaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfFilePath = Bundle.main.url(forResource: "Abba Father", withExtension: "pdf")
        
        let request = URLRequest.init(url: pdfFilePath!)
        
        let webView = UIWebView(frame: self.view.frame)
        
        webView.loadRequest(request)
        
        self.view.addSubview(webView)
        
        webView.scalesPageToFit = true

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
