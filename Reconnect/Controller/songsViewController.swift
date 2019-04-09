//
//  songsViewController.swift
//  Reconnect
//
//  Created by Alvin Harjanto on 5/23/18.
//  Copyright © 2018 Alvin Harjanto. All rights reserved.
//

import UIKit

class songsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        howGreatButton.addTarget(self, action: "howGreat", for: .touchUpInside)

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
    
    // MARK: - Opening
    
    
    @IBOutlet weak var howGreatButton: UIButton!
    
    @IBAction func howGreat(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.azlyrics.com/lyrics/christomlin/howgreatisourgod.html")!, options: [:], completionHandler: nil)
        
       
        }
    
    @IBAction func hatikuPercaya(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://lirik.kapanlagi.com/artis/true-worshippers/hatiku-percaya/")!, options: [:], completionHandler: nil)
        
    }
    
    
    @IBAction func kunyanyiHaleluya(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.kidung.com/2016/10/28/lirik-chord-lagu-ku-nyanyi-haleluya-symphony-worship/")!, options: [:], completionHandler: nil)
        
    }
    // MARK: - KKR
    
    @IBAction func moreThanEnough(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://lirik.kapanlagi.com/artis/jpcc-worship/more-than-enough/")!, options: [:], completionHandler: nil)
        
    }
    @IBOutlet weak var whatABeautifulName: UIButton!
    
    @IBOutlet weak var whatABeautifulNameButton: UIButton!
    
    @IBAction func whatABeautifulName(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "http://worshiptogether.com/songs/what-a-beautiful-name-hillsong-worship/")!, options: [:], completionHandler: nil)
        
    }
    
    
    @IBAction func LordIGive(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.worshiptogether.com/songs/i-give-you-my-heart/")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func hereIAm(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.azlyrics.com/lyrics/plusone/hereiamtoworship.html")!, options: [:], completionHandler: nil)
        
    }
    
    @IBOutlet weak var shoutToTheLord: UIButton!
    
    @IBAction func shoutToTheLordPressed(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.metrolyrics.com/shout-to-the-lord-lyrics-hillsong.html")!, options: [:], completionHandler: nil)
        
    }
    
    
    
    
    // MARK: - Closing
    
    
    @IBAction func openTheEyes(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.azlyrics.com/lyrics/michaelwsmith/opentheeyesofmyheart.html")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func jadiSpertiMu(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://music.kkihs.org/songs/details/jadi-seperti-mu-true-worshippers?key=D")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func howGreatThouArt(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://genius.com/Religious-music-how-great-thou-art-lyrics")!, options: [:], completionHandler: nil)
        
    }
    
    // MARK: - Session 1
    
    
    
    
    @IBAction func forTheLord(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "http://www.metrolyrics.com/for-the-lord-is-good-lyrics-ron-kenoly.html")!, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func constantSaviour(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.metrolyrics.com/constant-savior-lyrics-jpcc-worship.html")!, options: [:], completionHandler: nil)
        
    }
    
    
    
    
    
    }
    


