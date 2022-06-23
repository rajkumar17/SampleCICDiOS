//
//  ViewController.swift
//  RetirementCalcu
//
//  Created by Rajkumar on 22/06/22.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)        
        Analytics.trackEvent("View Loaded Calcu")
        if Crashes.hasCrashedInLastSession {
            let alert = UIAlertController(title: "Oops", message: "Sorry about that, an error occured.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func didTapCalcu(_ sender: Any) {
        //Crashes.generateTestCrash()        
        let amount = 100
        Analytics.trackEvent("calculate the button  clicked",withProperties: ["test": "test in dev","amount":amount])
    }
    
}

