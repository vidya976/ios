//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Nalluri,Srividya on 3/16/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var CrsTle: UILabel!
    
    @IBOutlet weak var SemOff: UILabel!
    
    @IBOutlet weak var PrevBtn: UIButton!
    
    @IBOutlet weak var NextBtn: UIButton!
    
    let Courses = [["img01","44555","Network Security","Fall2022"],["img02","44643","ios","Spring 2023"],["img03","44646","Streaming Data","Summer 2023"]]
    
    var Num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Update the details of the first course.
        //Disable the previous button and enable the Next Button.
        
        UpdateCourse(Num)
        
        PrevBtn.isEnabled = false
        NextBtn.isEnabled = true
    }

    @IBAction func PrevButtonClicked(_ sender: Any) {
        //Decrement Num
        Num -= 1
        
        //Update course details
        UpdateCourse(Num)
        
        //Next Button is enabled
        NextBtn.isEnabled = true
        
        //On reaching the starting of the array, disable the prev button
        if (Num == 0){
            PrevBtn.isEnabled = false
        }
    }
    
    @IBAction func NextButtonClicked(_ sender: Any) {
        //Increment Num
        Num += 1
        
        //Update Course Details
        UpdateCourse(Num)
        
        //previous Button is enabled
        PrevBtn.isEnabled = true
        
        //On reaching end of array, next button should be disabled.
        if (Num == Courses.count-1){
            NextBtn.isEnabled = false
        }
    }
    
    func UpdateCourse(_ Num:Int){
        ImageOutlet.image = UIImage(named: Courses[Num][0])
        crsNum.text = Courses[Num][1]
        CrsTle.text = Courses[Num][2]
        SemOff.text = Courses[Num][3]
    }
}
