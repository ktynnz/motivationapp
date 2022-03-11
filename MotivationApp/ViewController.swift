//
//  ViewController.swift
//  MotivationApp
//
//  Created by user215671 on 3/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var motivation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Gradient
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view.bounds
//        gradientLayer.colors = [
//            UIColor.systemTeal.cgColor,
//            UIColor.systemOrange.cgColor
//        ]
//        view.layer.addSublayer(gradientLayer)
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0)
        {
            //what to happen after the delay
            self.performSegue(withIdentifier: "splash", sender: nil)
        }
        
    

        UILabel.animate(withDuration: 3.5, delay: 0, animations: {
                
            UILabel.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
                self.motivation.alpha = 1
            })
            
            UILabel.addKeyframe(withRelativeStartTime: 1.0, relativeDuration: 0.25, animations: {
                self.motivation.layer.position.y = -100
                
            })
            
            UILabel.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.motivation.alpha = 0
            })
            
            
        })
    }


}

