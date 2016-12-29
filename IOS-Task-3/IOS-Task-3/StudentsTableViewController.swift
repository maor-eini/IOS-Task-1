//
//  StudentsTableViewController.swift
//  IOS-Task-3
//
//  Created by Maor Eini on 28/12/2016.
//  Copyright © 2016 Maor Eini. All rights reserved.
//

import UIKit

class StudentDetails{
    var firstName: String? = nil
    var lastName: String? = nil
    var studentId: String? = nil
    var phone: String? = nil
    
    init(firstName: String?, lastName: String?, studentId: String?, phone: String?)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.studentId = studentId
        self.phone = phone
    }
}

class StudentsTableViewController: UITableViewController, StudentDetialsEnteredDelegate {

    var items = [StudentDetails]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as UITableViewCell

        cell.textLabel?.text = items[indexPath.row].firstName! + " " + items[indexPath.row].lastName!

        return cell
    }
    
    func userDidEnterInformation (firstName: String, lastName: String, id: String, phone: String) {
        
        let newStudent = StudentDetails(firstName: firstName, lastName: lastName, studentId: id, phone: phone)

        items.append(newStudent)

        let insertionIndexPath = NSIndexPath(row: items.count-1, section: 0)

        tableView.insertRows(at: [insertionIndexPath as IndexPath], with: .automatic)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "AddNewStudent" {
            if let destination = segue.destination as? NewStudentViewController {
                destination.delegate = self
            }
        }
        
        if segue.identifier == "ShowStudentDetails" {
            if let destination = segue.destination as? StudentDetailsViewController {
                let cell = sender as? UITableViewCell
                if let c = cell {
                    let indexPath = tableView.indexPath(for: c)
                    if let ip = indexPath {
                        let student = items[ip.row]
                        destination.student = student

                    }
                }

            }
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */




}
