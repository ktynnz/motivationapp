//
//  marchTemplate.swift
//  MotivationApp
//
//  Created by user215671 on 3/7/22.
//

import UIKit

class marchTemplate: UIViewController {

    
 
    //@IBOutlet var days: [UIButton]!
    
    
    @IBOutlet var days: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for daysNum in days {
            daysNum.tintColor = UIColor.clear
        }
    }
   
    
    @IBAction func days(_ sender: UIButton) {
        sender.tintColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
    let colors = [UIColor.systemYellow, UIColor.systemOrange, UIColor.systemGreen, UIColor.systemRed, UIColor.systemGray]
    let randomNum = Int.random(in: 0...4)
    
    return colors[(randomNum)]
    }
}
