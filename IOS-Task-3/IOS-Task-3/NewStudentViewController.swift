//
//  NewStudentViewController.swift
//  IOS-Task-3
//
//  Created by Maor Eini on 28/12/2016.
//  Copyright © 2016 Maor Eini. All rights reserved.
//

import UIKit

protocol StudentDetialsEnteredDelegate {
    func userDidEnterInformation(firstName: String, lastName: String, id: String, phone: String)
}

class NewStudentViewController: UIViewController {
    
    var delegate:StudentDetialsEnteredDelegate? = nil
    

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var StudentIdTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveStudent(_ sender: Any) {
        if (delegate != nil) {
            if (firstNameTextField.text != nil && lastNameTextField.text != nil) {
                
                let firstName = firstNameTextField.text
                let lastName = lastNameTextField.text
                let id = StudentIdTextField.text
                let phone = phoneTextField.text
                
                delegate?.userDidEnterInformation(firstName: firstName! , lastName: lastName!, id: id!, phone: phone!)
                
                _ = self.navigationController?.popViewController(animated: true)
                
            }
                 
        }
        
    }

    @IBAction func clearUserInput(_ sender: Any) {
        firstNameTextField.text = nil
        lastNameTextField.text = nil
        StudentIdTextField.text = nil
        phoneTextField.text = nil
    }
    


}
