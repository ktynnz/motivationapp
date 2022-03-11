//
//  Template2022.swift
//  MotivationApp
//
//  Created by user215671 on 3/10/22.
//

import UIKit

class template2022: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    
    @IBAction func march(_ sender: Any) {
        performSegue(withIdentifier: "marchTemplate", sender: nil)
    }
    
}
