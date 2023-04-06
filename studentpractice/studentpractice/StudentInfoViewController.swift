//
//  StudentInfoViewController.swift
//  studentpractice
//
//  Created by Nalluri,Srividya on 4/4/23.
//

import UIKit

class StudentInfoViewController: UIViewController {

    @IBOutlet weak var SIDOutlet: UILabel!
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var CourseBtnOL: UIButton!
    
    var studentObj = Student()
    
    var guestUser: Bool  = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if guestUser{
            emailOutlet.isHidden = true
            nameOutlet.isHidden = true
            SIDOutlet.isHidden = true
            CourseBtnOL.isHidden = true
        }
        else{
            emailOutlet.text = "Email: " + studentObj.email
            nameOutlet.text = "Name: " + studentObj.name
            SIDOutlet.text = "SID: " + studentObj.sid
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "CourseSegue"{
            let destination = segue.destination as! CourseViewController
            
            destination.coursesArray = studentObj.courses
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
