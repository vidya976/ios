//
//  ViewController.swift
//  studentpractice
//
//  Created by Nalluri,Srividya on 4/4/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var SIDOutlet: UITextField!
    
    var studentfound = Student()
    
    var isStudent = false
    
    var studentArray = students
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func StdDetailsBtnClicked(_ sender: UIButton) {
        let enteredsid = SIDOutlet.text!
        
        for student in studentArray{
            if enteredsid == student.sid{
                isStudent = true
                studentfound = student
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "studentsegue"{
            
            let destination = segue.destination as! StudentInfoViewController
            
            if isStudent {
                destination.studentObj = studentfound
            }
            else{
                destination.guestUser = true
            }
        }
    }
    
}

