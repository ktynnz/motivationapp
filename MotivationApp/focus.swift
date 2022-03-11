//
//  focus.swift
//  MotivationApp
//
//  Created by user215671 on 3/6/22.
//

import UIKit

class focus: UIViewController {

    //Outlets
    //Labels
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    //ImageView
    @IBOutlet weak var plantImage: UIImageView!
    
    //Buttons
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var pause: UIButton!
    
    
    //variables
    var seconds = 0
    var minutes = 0
    var hours = 0
    
    //Timer
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pause.isEnabled = false
    }
    
    
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(count) , userInfo: nil, repeats: true)
        start.isEnabled = false
        pause.isEnabled = true
        
       
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        
        start.isEnabled = true
        pause.isEnabled = false
    }
    
    @IBAction func reset(_ sender: Any) {
        
        seconds = 0
        minutes = 0
        hours = 0
        secondsLabel.text = "00"
        minutesLabel.text = "00"
        hoursLabel.text = "00"
        
        timer.invalidate()
        start.isEnabled = true
        pause.isEnabled = false
        
        plantImage.image = nil
    }
    
    
    
    @objc func count() {
        
        seconds += 1
        secondsLabel.text = "\(seconds)"
        minutesLabel.text = "\(minutes)"
        hoursLabel.text = "\(hours)"

        //SECONDS
        if seconds == 60 {
            seconds = 0
            minutes += 1
            secondsLabel.text = "\(seconds)"
        }
        
        if seconds < 10 {
            secondsLabel.text = "0\(seconds)"
        }
        
        
                //MINUTES
                if minutes == 60 {
                    minutes = 0
                    hours += 1
                    minutesLabel.text = "\(minutes)"
                }
                
                if minutes < 10 {
                    minutesLabel.text = "0\(minutes)"
                }
        
        
                        //HOURS
                        if hours == 24 {
                            secondsLabel.text = "00"
                            minutesLabel.text = "00"
                            hoursLabel.text = "00"
                            
                            start.isEnabled = false
                            pause.isEnabled = false
                            timer.invalidate()
                        }
                        
                        if hours < 10 {
                            hoursLabel.text = "0\(hours)"
                        }
        
        
        //growingPlant
        //seconds
        if seconds > 5 && minutes >= 0 && hours >= 0 {
            plantImage.image = UIImage (named: "plant1")
        }
        
        if seconds > 30 && minutes >= 0 && hours >= 0 {
            plantImage.image = UIImage (named: "plant2")
        }
        
        
        //minutes
        if minutes >= 1 && seconds >= 0 && hours >= 0 {
            plantImage.image = UIImage (named: "plant3")
        }
        
        if minutes > 20 && seconds >= 0 && hours >= 0 {
            plantImage.image = UIImage (named: "plant4")
        }
        
        if minutes > 45 && seconds >= 0 && hours >= 0  {
            plantImage.image = UIImage (named: "plant5")
        }
        
        //hours
        if hours >= 1  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant6")
        }
         
        if hours >= 4  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant7")
        }
        
        if hours >= 10  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant8")
        }
        
        if hours >= 14  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant9")
        }
        
        if hours >= 16  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant10")
        }
        
        if hours >= 20  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant11")
        }
        
        if hours == 24  && minutes >= 0 && seconds >= 0 {
            plantImage.image = UIImage (named: "plant12")
        }
    }
}
    
    
   

