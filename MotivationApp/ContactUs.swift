//
//  ContactUs.swift
//  MotivationApp
//
//  Created by ktynnz on 3/10/22.
//

import UIKit
import MessageUI

class ContactUs: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var message: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func send(_ sender: Any) {
        
        var fullname = fname.text
        var emailadd = email.text
        var msg = message.text
        
        if MFMailComposeViewController.canSendMail()
        {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            
            mail.setToRecipients(["krystynne.fernando@triosstudent.com", "kryzcafe@gmail.com"])
            
            mail.setMessageBody("<p>\(message)</p>", isHTML: true)
        }
        else{
            print("Sending emails is not available on a simulator...")
            print("\(fullname) \n\(emailadd), \n\(msg)")
        }
        
        showAlert()
        clearText()
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Thank you!", message: "Your message has been sent. We will keep in touch.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: .none))
        present(alert, animated: true)
    }
    
    
    @IBAction func quoteSend(_ sender: Any) {
        var fullname = fname.text
        var emailadd = email.text
        var quote = message.text
        
        if MFMailComposeViewController.canSendMail()
        {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            
            mail.setToRecipients(["krystynne.fernando@triosstudent.com", "kryzcafe@gmail.com"])
            
            mail.setMessageBody("<p>\(message)</p>", isHTML: true)
        }
        else{
            print("Sending emails is not available on a simulator...")
            print("\(fullname) \n\(emailadd), \n\(quote)")
        }
        
        showAlertQuote()
        clearText()
        
        
    }
    
    func showAlertQuote() {
        let alert = UIAlertController(title: "", message: "Thank you for sharing your favourite quote.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Keep inspiring!", style: .cancel, handler: .none))
        present(alert, animated: true)
    }
    
    func clearText() {
        fname.text = ""
        email.text = ""
        message.text = ""
    }
    
    
}
