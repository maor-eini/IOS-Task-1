//
//  StudentDetailsViewController.swift
//  IOS-Task-3
//
//  Created by Maor Eini on 28/12/2016.
//  Copyright © 2016 Maor Eini. All rights reserved.
//

import UIKit

class StudentDetailsViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var studentIdLabel: UILabel!
    
    @IBOutlet weak var phoneIdLabel: UILabel!
    
    var student: StudentDetails? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = firstNameLabel.text! + " " + (student?.firstName)!
        lastNameLabel.text = lastNameLabel.text! + " " + (student?.lastName)!
        studentIdLabel.text = studentIdLabel.text! + " " + (student?.studentId)!
        phoneIdLabel.text = phoneIdLabel.text! + " " + (student?.phone)!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
