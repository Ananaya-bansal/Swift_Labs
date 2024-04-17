//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Ananaya on 07/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text="Yayyy! Rocking app!"
    }
    
}

