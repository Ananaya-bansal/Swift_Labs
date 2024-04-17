//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Ananaya on 10/04/24.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var MiddleLabel: UILabel!
    var eventNumber : Int = 1
    override func viewDidLoad(){
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")


        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        addEvent(from: "viewDidAppear")
    print("viewDidAppear")
    }
    override func viewWillAppear(_ animated: Bool) {
        addEvent(from:"viewWillAppear")
        print("viewWillAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        addEvent(from: "viewWillDisappear")
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        addEvent(from: "viewDidDisappear")
        print("viewDidDisappear")
    }
    func addEvent(from: String) {
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
