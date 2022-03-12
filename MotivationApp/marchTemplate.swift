//
//  marchTemplate.swift
//  MotivationApp
//
//  Created by ktynnz on 3/7/22.
//

import UIKit

class marchTemplate: UIViewController {

    //Button Array - drag button then select Outlet Collection, then drag from the circle beside @IBOutlet to the buttons which you want to include in the array
    //Best used if you have a lot of objects that you want the same assigned output
    @IBOutlet var days: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for loop for the buttons - assigning them the same colors
        for daysNum in days {
            daysNum.tintColor = UIColor.clear
        }
    }
   
    //everytime the button is clicked it will change colors
    @IBAction func days(_ sender: UIButton) {
        sender.tintColor = getRandomColor()
    }
    
    
    //Assigns and generate random solid UIColors
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
