//
//  MiniGame1.swift
//  MotivationApp
//
//  Created by user215671 on 3/9/22.
//

import UIKit

class MiniGame1: UIViewController {
    
    //Buttons
    @IBOutlet weak var gameClick: UIButton!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var restart: UIButton!
    
    @IBOutlet weak var Home: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    //Labels
    @IBOutlet weak var timerCount: UILabel!
    @IBOutlet weak var clickCount: UILabel!
    
    //Timer
    var timer = Timer()
    
    //counts
    var count = 0
    var timeCount = 6
    var pbar = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = generateRandomColor()
        gameClick.isEnabled = false
        restart.isHidden = true
        
        
    }
    
    @IBAction func Home(_ sender: Any) {
        performSegue(withIdentifier: "homePage" , sender: nil)
    }
    
    @IBAction func gameClick(_ sender: Any) {
        
        count += 1
        view.backgroundColor = generateRandomColor()
        clickCount.textColor = generateRandomColor()
        
        clickCount.text = "Clicks: \(count)"
    }
    
    @IBAction func restart(_ sender: Any) {
        start.isHidden = false
        restart.isHidden = true
        Home.isHidden = false
        
        count = 0
        progressBar.progress = 0
        timeCount = 6
        
        timer.invalidate()
        
        timerCount.text = "0"
        clickCount.text = "Clicks: \(count)"
    }
    
    
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startGame) , userInfo: nil, repeats: true)
        
        
        gameClick.isEnabled = true
        start.isHidden = true
        Home.isHidden = true
    }
    
    @objc func startGame(){
        timeCount -= 1
        progressBar.progress += 0.2
        timerCount.text = "\(timeCount)"
        
        pgColor()
        
        
        if timeCount == 0 {
            showAlert()
            timer.invalidate()
            timeCount = 0
            timerCount.text = "\(timeCount)"
            clickCount.textColor = UIColor.systemOrange
            
            restart.isHidden = false
            gameClick.isEnabled = false
            Home.isHidden = true
        }
        
        if timeCount > 5 {
            start.isHidden = true
            restart.isHidden = true
        }
        
    }
    
    func generateRandomColor() -> UIColor {
//        let redValue = CGFloat.random(in: 0...9)
//        let greenValue = CGFloat.random(in: 0...9)
//        let blueValue = CGFloat.random(in: 0...9)
//
//        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
        
        return randomColor
    }
    
    func pgColor() {
        
        switch progressBar.progress {
        case 0.8:
            progressBar.progressTintColor = generateRandomColor()
        case 0.6:
            progressBar.progressTintColor = generateRandomColor()
        case 0.4:
            progressBar.progressTintColor = generateRandomColor()
        case 0.2:
            progressBar.progressTintColor = generateRandomColor()
        default:
            progressBar.progressTintColor = UIColor.black
        }
    }
    
    
    func showAlert() {
        let alert = UIAlertController(title: "Time's Up!", message: "You clicked \(count) times.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: .none))
        present(alert, animated: true)
    }
    
}
