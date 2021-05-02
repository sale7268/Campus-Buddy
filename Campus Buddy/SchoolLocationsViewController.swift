//
//  SchoolLocationsViewController.swift
//  Campus Buddy
//
//  Created by Denize Ignacio on 5/1/21.
//

import UIKit

class SchoolLocationsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openHarborHallMaps(_ sender: Any) {
        openMap(lat: "36.6534997", long: "-121.8015196")
    }
    
    @IBAction func openSandHallMaps(_ sender: Any) {
        openMap(lat: "36.6908896", long: "-121.6553537")
    }
    
    @IBAction func openBITBuildingMaps(_ sender: Any) {
        openMap(lat: "36.6520419", long: "-121.7997461")
    }
    
    @IBAction func openFieldHouseMaps(_ sender: Any) {
        openMap(lat: "36.6516635", long: "-121.8066328")
    }
    
    @IBAction func openFieldOfficeMaps(_ sender: Any) {
        openMap(lat: "36.6494788", long: "-121.808169")
    }
    
    
    @IBAction func openDunesHallMaps(_ sender: Any) {
        openMap(lat: "6.6494788", long: "-121.808169")
    }
    
    @IBAction func openGavilanHallMaps(_ sender: Any) {
        openMap(lat: "36.6544102", long: "-121.7951242")
    }
    
    @IBAction func openGreenHallMaps(_ sender: Any) {
        openMap(lat: "36.6520675", long: "-121.7927413")
    }
    
    @IBAction func openGroveHallMaps(_ sender: Any) {
        openMap(lat: "42.3112242", long: "-71.0832502")
    }
    
    @IBAction func openHeronHallMaps(_ sender: Any) {
        openMap(lat: "36.6542818", long: "-121.8020244")
    }
    
    func openMap(lat: String, long: String) {
        if (UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!)) {
            UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://?daddr=\(lat),\(long)")!)
        } else {
            UIApplication.shared.openURL(URL(string: "https://www.google.com/maps/?daddr=\(lat),\(long)")!)
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
