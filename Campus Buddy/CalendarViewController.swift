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

class CalendarViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, FSCalendarDelegate{
    
    @IBOutlet var calendar: FSCalendar!
    @IBOutlet weak var tableView: UITableView!
    
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
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassCell") as! ClassCell
        return cell
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
