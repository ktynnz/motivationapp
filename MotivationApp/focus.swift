//
//  focus.swift
//  MotivationApp
//
//  Created by ktynnz on 3/6/22.
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
    
    //Action Buttons
    @IBAction func start(_ sender: Any) {
        
        //triggers the timer with interval of 1 second and is connected to function count (#selector(count)
        //change interval to less than 1 (e.g. 0.0001) to make it count faster
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(count) , userInfo: nil, repeats: true)
        
        //buttons
        start.isEnabled = false
        pause.isEnabled = true
    }
    
    @IBAction func pause(_ sender: Any) {
        //disables the timer
        timer.invalidate()
        
        //buttons
        start.isEnabled = true
        pause.isEnabled = false
    }
    
    @IBAction func reset(_ sender: Any) {
        
        //set variables start count to 0
        seconds = 0
        minutes = 0
        hours = 0
        
        //Labels initial text
        secondsLabel.text = "00"
        minutesLabel.text = "00"
        hoursLabel.text = "00"
        
        timer.invalidate()
        
        //buttons & imageView
        start.isEnabled = true
        pause.isEnabled = false
        
        plantImage.image = nil
    }
    
    
    //functions
    
    //count function connected to start button
    @objc func count() {
        
        //When timer starts, increment seconds to 1
        seconds += 1
        
        //Labels
        secondsLabel.text = "\(seconds)"
        minutesLabel.text = "\(minutes)"
        hoursLabel.text = "\(hours)"

        //CONDITIONS
        //seconds
        if seconds == 60 {
            seconds = 0
            minutes += 1
            secondsLabel.text = "\(seconds)"
        }
        
        if seconds < 10 {
            secondsLabel.text = "0\(seconds)"
        }
        
        
                //Minutes
                if minutes == 60 {
                    minutes = 0
                    hours += 1
                    minutesLabel.text = "\(minutes)"
                }
                
                if minutes < 10 {
                    minutesLabel.text = "0\(minutes)"
                }
        
        
                        //Hours
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
        
        
        //GROWING PLANT - everyime a condition is met, it displays the assigned image
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
    
    
   

