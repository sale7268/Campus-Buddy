//
//  CampusResourcesViewController.swift
//  Campus Buddy
//
//  Created by Armon Bakhtar on 4/25/21.
//

import UIKit

class CampusResourcesViewController: UIViewController {
    
    @IBOutlet weak var academic: UITextView!
    @IBOutlet weak var basicNeeds: UITextView!
    @IBOutlet weak var behavioral: UITextView!
    @IBOutlet weak var campusHealth: UITextView!
    @IBOutlet weak var campusService: UITextView!
    @IBOutlet weak var careTeam: UITextView!
    @IBOutlet weak var careerDevelop: UITextView!
    @IBOutlet weak var collegeAssist: UITextView!
    @IBOutlet weak var cooperativeLearn: UITextView!
    @IBOutlet weak var educationalOpportunity: UITextView!
    @IBOutlet weak var financialAid: UITextView!
    @IBOutlet weak var healthAndWellness: UITextView!
    @IBOutlet weak var registrarOffice: UITextView!
    @IBOutlet weak var studentDisability: UITextView!
    @IBOutlet weak var transferSuccess: UITextView!
    @IBOutlet weak var universityPolice: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAcademic()
        updateBasic()
        updateBehavioral()
        updateCampusHealth()
        updateCampusService()
        updateCareTeam()
        updateCareerDevelop()
        updateCollegeAssist()
        updateCooperativeLearn()
        updateEducationalOpportunity()
        updateFinancialAid()
        updateHealthAndWellness()
        updateRegistrarOffice()
        updateStudentDisability()
        updateTransferSuccess()
        updateUniversityPolice()

        // Do any additional setup after loading the view.
    }
    
    func updateUniversityPolice(){
        let path = "https://csumb.edu/police"
        let text = universityPolice.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "University Police")
        let font = universityPolice.font
        let textColor = universityPolice.textColor
        universityPolice.attributedText = attributedString
        universityPolice.font = font
        universityPolice.textColor = textColor
    }
    
    func updateTransferSuccess(){
        let path = "https://csumb.edu/transfercenter"
        let text = transferSuccess.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Transfer Student Success Center")
        let font = transferSuccess.font
        let textColor = transferSuccess.textColor
        transferSuccess.attributedText = attributedString
        transferSuccess.font = font
        transferSuccess.textColor = textColor
    }
    
    func updateStudentDisability(){
        let path = "https://csumb.edu/sdr"
        let text = studentDisability.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Student Disability Resources")
        let font = studentDisability.font
        let textColor = studentDisability.textColor
        studentDisability.attributedText = attributedString
        studentDisability.font = font
        studentDisability.textColor = textColor
    }
    
    func updateRegistrarOffice(){
        let path = "https://csumb.edu/registrar"
        let text = registrarOffice.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Office of the Registrar")
        let font = registrarOffice.font
        let textColor = registrarOffice.textColor
        registrarOffice.attributedText = attributedString
        registrarOffice.font = font
        registrarOffice.textColor = textColor
    }
    
    func updateHealthAndWellness(){
        let path = "https://csumb.edu/hws"
        let text = healthAndWellness.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Health & Wellness Services")
        let font = healthAndWellness.font
        let textColor = healthAndWellness.textColor
        healthAndWellness.attributedText = attributedString
        healthAndWellness.font = font
        healthAndWellness.textColor = textColor
    }
    
    func updateFinancialAid(){
        let path = "https://csumb.edu/financialaid"
        let text = financialAid.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Financial Aid")
        let font = financialAid.font
        let textColor = financialAid.textColor
        financialAid.attributedText = attributedString
        financialAid.font = font
        financialAid.textColor = textColor
    }
    
    func updateEducationalOpportunity(){
        let path = "https://csumb.edu/eop"
        let text = educationalOpportunity.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Educational Opportunity Program")
        let font = educationalOpportunity.font
        let textColor = educationalOpportunity.textColor
        educationalOpportunity.attributedText = attributedString
        educationalOpportunity.font = font
        educationalOpportunity.textColor = textColor
    }
    
    func updateCooperativeLearn(){
        let path = "https://csumb.edu/clc"
        let text = cooperativeLearn.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Cooperative Learning Center")
        let font = cooperativeLearn.font
        let textColor = cooperativeLearn.textColor
        cooperativeLearn.attributedText = attributedString
        cooperativeLearn.font = font
        cooperativeLearn.textColor = textColor
    }
    
    func updateCollegeAssist(){
        let path = "https://csumb.edu/camp"
        let text = collegeAssist.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "College Assistance Migrant Program")
        let font = collegeAssist.font
        let textColor = collegeAssist.textColor
        collegeAssist.attributedText = attributedString
        collegeAssist.font = font
        collegeAssist.textColor = textColor
    }
    
    func updateCareerDevelop(){
        let path = "https://csumb.edu/career"
        let text = careerDevelop.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Career Development Office")
        let font = careerDevelop.font
        let textColor = careerDevelop.textColor
        careerDevelop.attributedText = attributedString
        careerDevelop.font = font
        careerDevelop.textColor = textColor
    }
    
    func updateCareTeam(){
        let path = "https://csumb.edu/studentlife/care-team"
        let text = careTeam.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Care Team")
        let font = careTeam.font
        let textColor = careTeam.textColor
        careTeam.attributedText = attributedString
        careTeam.font = font
        careTeam.textColor = textColor
    }
    
    func updateCampusService(){
        let path = "https://csumb.edu/csc"
        let text = campusService.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Campus Service Center")
        let font = campusService.font
        let textColor = campusService.textColor
        campusService.attributedText = attributedString
        campusService.font = font
        campusService.textColor = textColor
    }
    
    func updateCampusHealth(){
        let path = "https://csumb.edu/health"
        let text = campusHealth.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Campus Health Center")
        let font = campusHealth.font
        let textColor = campusHealth.textColor
        campusHealth.attributedText = attributedString
        campusHealth.font = font
        campusHealth.textColor = textColor
    }
    
    func updateBehavioral(){
        let path = "https://csumb.edu/behavioralinterventionteam"
        let text = behavioral.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Behavioral Intervention Team (BIT)")
        let font = behavioral.font
        let textColor = behavioral.textColor
        behavioral.attributedText = attributedString
        behavioral.font = font
        behavioral.textColor = textColor
    }
    
    func updateAcademic(){
        let path = "https://csumb.edu/advising"
        let text = academic.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Academic Advising")
        let font = academic.font
        let textColor = academic.textColor
        academic.attributedText = attributedString
        academic.font = font
        academic.textColor = textColor
        
    }
    
    func updateBasic(){
        let path = "https://csumb.edu/basicneeds"
        let text = basicNeeds.text ?? ""
        let attributedString = NSAttributedString.makeHyperlink(for: path, in: text, as: "Basic Needs")
        let font = basicNeeds.font
        let textColor = basicNeeds.textColor
        basicNeeds.attributedText = attributedString
        basicNeeds.font = font
        basicNeeds.textColor = textColor
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
