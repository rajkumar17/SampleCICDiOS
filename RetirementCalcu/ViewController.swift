//
//  ViewController.swift
//  RetirementCalcu
//
//  Created by Rajkumar on 22/06/22.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nametxtfld: UITextField!
    @IBOutlet weak var deptxtfld: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nametxtfld.delegate = self
        deptxtfld.delegate = self
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
        nametxtfld.resignFirstResponder()
        deptxtfld.resignFirstResponder()
        
        guard let name = nametxtfld.text else { return }
        guard let dept = deptxtfld.text else { return }
        resultLabel.text = "the name is \(name) \(dept)"
        
        Analytics.trackEvent("calculate the button  clicked",withProperties: ["test": "test in dev","amount":"100","name":name,"dept":dept])
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

