//
//  ViewController.swift
//  Login
//
//  Created by Ananaya on 09/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ForgotPassword: UIButton!
    
    @IBOutlet weak var ForgotUserName: UIButton!
    @IBOutlet weak var UserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == ForgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == ForgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UserName.text
        }
        
       }
   
    
    @IBAction func ForgotUserNameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "LandingPage",
           sender: sender)
        
    }
    @IBAction func ForgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "LandingPage",
           sender: sender)
    }
}

