//
//  CalendarViewController.swift
//  Campus Buddy
//
//  Created by Miguel Angel Espitia on 4/13/21.
//  Modified by Hamza Saleem
//

import UIKit
import FSCalendar
import AlamofireImage
import Parse

var weekday = 0

class CalendarViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, FSCalendarDelegate{
    
    @IBOutlet var calendar: FSCalendar!
    @IBOutlet weak var tableView: UITableView!
    
    var classes = [PFObject]()
    var currentUser = PFUser.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Initiating a button with plus as background image
        let image = UIImage(named: "plus.png")
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.frame = CGRect(origin: CGPoint(x: self.view.frame.width / 2 - 25, y: self.view.frame.size.height - 80), size: CGSize(width: 50, height: 50))
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)

        //adding the button to view
        self.view.addSubview(button)
        
        calendar.delegate = self
        calendar.appearance.weekdayTextColor = UIColor.blue
        calendar.appearance.headerTitleColor = UIColor.blue
        calendar.appearance.selectionColor = UIColor.blue
        calendar.appearance.todayColor = UIColor.orange
        calendar.appearance.todaySelectionColor = UIColor.black

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Classes")
        query.whereKey("author", equalTo: currentUser)
        query.includeKeys(["class_name", "classDate", "buildingName", "classTimeHour", "classTimeMinute", "weekday"])
        query.limit = 20
        
        query.findObjectsInBackground { (classes, error) in
            if classes != nil {
                self.classes = classes!
                self.tableView.reloadData()
            }
        }
    }
    
    //add class Button calls this fcuntion when clicked
    @objc func clicked(){
        print("Button clicked")
        showAddClassView()
    }
    
    //Function to perform segue from Calendar view to AddClass view
    func showAddClassView() {
        if let mvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddClassViewController") as? AddClassViewController {
          self.present(mvc, animated: true, completion: nil)
        }
      }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition){
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY at h:mm a"
        let string = formatter.string(from: date)
        print ("\(string)")
        
        weekday = Calendar.current.component(.weekday, from: date)
        print(weekday)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return classes.count
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let classSchedule = classes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell") as! ClassCell
        var currentWeekday = classSchedule["weekday"] as! String
        
        if(weekday == 1){
            if(currentWeekday == "Sunday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 2){
            if(currentWeekday == "Monday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 3){
            if(currentWeekday == "Tuesday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 4){
            if(currentWeekday == "Wednesday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 5){
            if(currentWeekday == "Thursday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 6){
            if(currentWeekday == "Friday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else if(weekday == 7){
            if(currentWeekday == "Saturday"){
                cell.classLabel.text = classSchedule["class_name"] as! String
                cell.buildingLabel.text = classSchedule["buildingName"] as! String
                let timeH = classSchedule["classTimeHour"] as! String
                let timeM = classSchedule["classTimeMinute"] as! String
                cell.timeLabel.text = timeH + ":" + timeM as String
                currentWeekday = classSchedule["weekday"] as! String
            }else{
                return UITableViewCell()
            }
        }else{
            tableView.reloadData()
        }
        
        return cell;
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
