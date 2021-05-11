//
//  HomeScreenViewController.swift
//  Campus Buddy
//
//  Created by Shawn Deppe on 4/13/21.
//

import UIKit
import Parse
import HTMLKit
import WebKit
class HomeScreenViewController: UIViewController, WKNavigationDelegate {
    private let webView: WKWebView = {
            let webView = WKWebView(frame: .zero)
            return webView;
        }()
        let urlString = "https://csumb.edu/events/"
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(webView)
            webView.frame = view.bounds
            webView.navigationDelegate = self
            guard let url = URL(string: urlString)else{
                return
            }
            webView.load(URLRequest(url:url))
        }
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        UserDefaults.standard.setValue(false, forKey: "userLoggedIn")
        self.dismiss(animated: true, completion: nil)
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
