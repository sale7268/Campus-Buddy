//
//  AddClassViewController.swift
//  Campus Buddy
//
//  Created by Hamza Saleem on 4/15/21.
//

import UIKit
import Parse

class AddClassViewController: UIViewController {
    
    @IBOutlet weak var classNameField: UITextField!
    @IBOutlet weak var buildingNameField: UITextField!
    @IBOutlet weak var timeHourField: UITextField!
    @IBOutlet weak var timeMinuteField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        let classes = PFObject(className: "Classes")
        
        classes["className"] = classNameField.text!
        classes["buildingName"] = buildingNameField.text!
        classes["classTimeHour"] = timeHourField.text!
        classes["classTimeMinute"] = timeMinuteField.text!
        classes["author"] = PFUser.current()!
        
        
        classes.saveInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "AddClassToCalendarViewSegue", sender: nil)
                print("Saved!")
            } else {
                print("Error!")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
