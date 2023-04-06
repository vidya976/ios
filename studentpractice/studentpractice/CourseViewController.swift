//
//  CourseViewController.swift
//  studentpractice
//
//  Created by Nalluri,Srividya on 4/4/23.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var CoursesOutlet: UILabel!
    
    var coursesArray:[Course] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for courses in coursesArray {
            CoursesOutlet.text = CoursesOutlet.text! + courses.title + "-" + courses.sem + "\n"
            print(CoursesOutlet.text!)
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
