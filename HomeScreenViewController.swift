//
//  HomeScreenViewController.swift
//  Campus Buddy
//
//  Created by Shawn Deppe on 4/13/21.
//

import UIKit
import Parse

class HomeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        
        self.performSegue(withIdentifier: "logoutSegue", sender: nil)
        
//        let main = UIStoryboard(name: "Main", bundle:nil)
//        let LoginViewController = main.instantiateViewController(identifier: "LoginViewController")
//        
//        let delefate = self.view.window?.windowScene?.delegate as! SceneDelegate
//        
//        delefate.window?.rootViewController = LoginViewController
    }
    
    @IBAction func onSuicide(_ sender: Any) {
        PFUser.logOut()
        
        print("Shit works")
    }
    @IBAction func OnMaps(_ sender: Any) {
        self.performSegue(withIdentifier: "mapsSegue", sender: nil)
    }
    
    @IBAction func onSchedule(_ sender: Any) {
        self.performSegue(withIdentifier: "scheduleSegue", sender: nil)
    }
    
    @IBAction func onEvents(_ sender: Any) {
        self.performSegue(withIdentifier: "eventsSegue", sender: nil)
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
