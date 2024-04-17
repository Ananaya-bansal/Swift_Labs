//
//  ViewController.swift
//  AppEventCount
//
//  Created by Ananaya on 10/04/24.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var didFinishLaunching: UILabel!
    
    @IBOutlet weak var ForConnecting: UILabel!
    
    @IBOutlet weak var willConnectTo: UILabel!
    
    @IBOutlet weak var SceneDidBecomeActive: UILabel!
    
    @IBOutlet weak var SceneWillResignActive: UILabel!
    
    @IBOutlet weak var SceneWillEnterForeground: UILabel!
    
    @IBOutlet weak var SceneDidEnterBackground: UILabel!
    var willConnectCount = 0
    var CountDidBecomeActive = 0
    var CountWillResignActive = 0
    var CountWillEnterForeground = 0
    var CountDidEnterBackground = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    func updateView(){
        didFinishLaunching.text = "The App has launched \(appDelegate.launchCount) time(s)"
        ForConnecting.text = "The App has Configured \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectTo.text = "The App has connected \(willConnectCount) time(s)"
        SceneDidBecomeActive.text = "The App has Become Active \(CountDidBecomeActive) time(s)"
        SceneWillResignActive.text = "The App has Resign Active \(CountWillResignActive) time(s)"
        SceneWillEnterForeground.text = "The App has Entered Foreground \(CountWillEnterForeground) time(s)"
        SceneDidEnterBackground.text = "The App has Entered Background \(CountDidEnterBackground) time(s)"
    }
}

