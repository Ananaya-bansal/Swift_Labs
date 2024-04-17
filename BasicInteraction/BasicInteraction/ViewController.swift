//
//  ViewController.swift
//  BasicInteraction
//
//  Created by Ananaya on 07/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texttfield: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = texttfield.text
    }
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = "Placeholder"
        texttfield.text = "Enter the text"
    }
}

