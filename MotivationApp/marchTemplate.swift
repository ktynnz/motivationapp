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
    let colors =
        [
         UIColor(named: "CustomYellow"),
         UIColor(named: "CustomOrange"),
         UIColor(named: "CustomGreen"),
         UIColor(named: "CustomRed"),
         UIColor(named: "CustomGray")
        ]
    let randomNum = Int.random(in: 0...4)
    
        return colors[(randomNum)] ?? UIColor.clear
    }
}
