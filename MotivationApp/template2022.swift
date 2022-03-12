//
//  Template2022.swift
//  MotivationApp
//
//  Created by ktynnz on 3/10/22.
//

import UIKit

class template2022: UIViewController {
    
    
    //Button Array - drag button then select Outlet Collection, then drag from the circle beside @IBOutlet to the buttons which you want to include in the array
    @IBOutlet var month1: [UIButton]!
    @IBOutlet var month2: [UIButton]!
    @IBOutlet var month3: [UIButton]!
    @IBOutlet var month4: [UIButton]!
    
    //Label
    @IBOutlet weak var year: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    //Animation will appear as soon as the page loads
    override func viewWillAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.year.alpha = 1
        })
        
        UIButton.animate(withDuration: 0.8, delay: 0, animations: {
            for JanFebMar in self.month1 {
                JanFebMar.frame.origin.x = -100
            }
           
            for JulAugSep in self.month3 {
                JulAugSep.frame.origin.x = -100
            }
        })
        
        
        UIButton.animate(withDuration: 0.8, delay: 0, animations: {
            for AprMayJun in self.month2 {
                AprMayJun.frame.origin.x = 500
            }
            for OctNovDec in self.month4 {
                OctNovDec.frame.origin.x = 500
            }
        })
        
    }
    
    
    @IBAction func march(_ sender: Any) {
        performSegue(withIdentifier: "marchTemplate", sender: nil)
    }
    
}
