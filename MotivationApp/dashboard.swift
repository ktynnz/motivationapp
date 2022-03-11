//
//  dashboard.swift
//  MotivationApp
//
//  Created by user215671 on 3/10/22.
//

import UIKit

class dashboard: UIViewController {

    @IBOutlet weak var quoteImage: UIImageView!

    @IBOutlet weak var randomQuote: UIButton!
    @IBOutlet weak var timerFocus: UIButton!
    @IBOutlet weak var miniGames: UIButton!
    @IBOutlet weak var monthlyTracker: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let num = Int.random(in: 0...16)
        quoteImage.image = UIImage(named: "image\(num).jpg")
        
        
        
        
//        UILabel.animate(withDuration: 1.5, delay: 0, animations: {
//
//            UILabel.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 1, animations: {
//                self.quoteImage.alpha = 1
//            })
//
//            UIButton.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 1, animations: {
//                for btn in self.buttons {
//                    btn.layer.position.y = -50
//                }
//            })
//
//            UIButton.addKeyframe(withRelativeStartTime: 1.5, relativeDuration: 1.5, animations: {
//                for btn1 in self.buttons1 {
//                    btn1.layer.position.y = -100
//                }
//            })
//        })
//
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        UILabel.animate(withDuration: 1.5, delay: 0, animations: {
                
            UILabel.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 3, animations: {
                self.quoteImage.alpha = 1
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.25, animations: {
                self.randomQuote.layer.position.y = 10
                           
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.25, animations: {
                
                self.monthlyTracker.layer.position.y = 10
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.25, animations: {
                
                self.timerFocus.layer.position.y = 500
            })
            
            UIButton.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.25, animations: {
                
                self.miniGames.layer.position.y = 500
                
            })
            
        })
    }
    
    
    @IBAction func sendQuotes(_ sender: Any) {
        performSegue(withIdentifier: "sendQuote", sender: nil)
    }
    @IBAction func randomQuotes(_ sender: Any) {
        performSegue(withIdentifier: "dayQuotes", sender: nil)
    }
    
    @IBAction func timerFocus(_ sender: Any) {
        performSegue(withIdentifier: "focusTimer", sender: nil)
    }
    
    @IBAction func miniGames(_ sender: Any) {
        performSegue(withIdentifier: "colorClick", sender: nil)
    }
    
    @IBAction func monthlyTracker(_ sender: Any) {
        performSegue(withIdentifier: "moodTracker", sender: nil)
    }
    
    
}
