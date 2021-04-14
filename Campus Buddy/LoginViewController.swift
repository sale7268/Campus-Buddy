//
//  LoginViewController.swift
//  Campus Buddy
//
//  Created by Shawn Deppe on 4/13/21.
//

import UIKit
import Parse
import FSCalendar

class LoginViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource{
    private weak var calendar: FSCalendar!

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
//        calendar.dataSource = self
//        calendar.delegate = self
//        view.addSubview(calendar)
//        self.calendar = calendar
        
        
        
        // Do any additional setup after loading the view.
    }
//    func calendar(calendar: FSCalendar!, hasEventForDate date: NSDate!) -> Bool {
//        return shouldShowEventDot
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }
    }
    
    @IBAction func onLogin(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                UserDefaults.standard.set(true, forKey: "userLoggedIn")
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onRegister(_ sender: Any) {
        self.performSegue(withIdentifier: "registerSegue", sender: nil)
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
