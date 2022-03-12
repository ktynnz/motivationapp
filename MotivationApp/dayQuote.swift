//
//  dayQuote.swift
//  MotivationApp
//
//  Created by ktynnz on 3/10/22.
//

import UIKit

class dayQuote: UIViewController {

    @IBOutlet weak var quote: UIImageView!
    
    @IBOutlet weak var newQuote: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    /* ASSIGNING GRADIENT --- LEARN MORE ABOUT GRADIENTS
         let gradientLayer = CAGradientLayer()
         gradientLayer.frame = view.bounds
         gradientLayer.colors = [
             UIColor.systemTeal.cgColor,
             UIColor.systemOrange.cgColor
         ]
         //view.layer.addSublayer(gradientLayer)
         view.layer.backgroundColor = CGColor.gradientLayer
    */
    }
    
    
    @IBAction func newQuote(_ sender: Any) {
        let randomNum = Int.random(in: 1 ... 16)
        
        quote.image = UIImage(named: "image\(randomNum)")
    }
    
}
