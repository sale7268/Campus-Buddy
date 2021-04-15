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
    @IBOutlet weak var dateMontField: UITextField!
    @IBOutlet weak var dateDayField: UITextField!
    @IBOutlet weak var dateYearField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        let classes = PFObject(className: "Classes")
        
        classes["className"] = classNameField.text!
        classes["buildingName"] = buildingNameField.text!
        classes["classTimeHour"] = timeHourField.text!
        classes["classTimeMinute"] = timeMinuteField.text!
        classes["author"] = PFUser.current()!
        
        let month = dateMontField.text!
        let day = dateDayField.text!
        let year = dateYearField.text!
        let dateFormat = month + "-" + day + "-" + year
        classes["classDate"] = dateFormat
        
        
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
