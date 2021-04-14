//
//  CalendarViewController.swift
//  Campus Buddy
//
//  Created by Miguel Angel Espitia on 4/13/21.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDelegate{
    @IBOutlet var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendar.delegate = self
        calendar.appearance.weekdayTextColor = UIColor.blue
        calendar.appearance.headerTitleColor = UIColor.blue
        calendar.appearance.selectionColor = UIColor.blue
        calendar.appearance.todayColor = UIColor.orange
        calendar.appearance.todaySelectionColor = UIColor.black

        // Do any additional setup after loading the view.
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition){
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY at h:mm a"
        let string = formatter.string(from: date)
        print ("\(string)")
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
