//
//  ViewController.swift
//  Nalluri_Exam01
//
//  Created by Nalluri,Srividya on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HFeetoutlet: UITextField!
    
    @IBOutlet weak var Hinchesoutlet: UITextField!
    
    @IBOutlet weak var Wlbsoutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var LabelOutlet: UILabel!
    
    @IBOutlet weak var desimageOutlet: UIImageView!
    
    @IBAction func Buttonclicked(_ sender: UIButton) {
        var bmi:Double
        var hgt:Double
        var wgt:Double = Double(Wlbsoutlet.text!)!
        var hgtf:Double = Double(HFeetoutlet.text!)!
        var hgti:Double = Double(Hinchesoutlet.text!)!
        hgt = (hgtf * 12) + hgti
        bmi = round((703 * (wgt/(hgt*hgt)))*10.0)/10.0
        LabelOutlet.text! = "\(bmi)"
        if bmi <= 18.5{
            LabelOutlet.text = "Your Body Mass Index is \(bmi).\nThis is condidered Underweight."
            desimageOutlet.image = UIImage(named: "underWeight")
        }
        else if (bmi >= 18.6 && bmi <= 24.9){
            LabelOutlet.text = "Your Body Mass Index is \(bmi).\nThis is condidered Normal👍."
            desimageOutlet.image = UIImage(named: "normal")
        }
        else if (bmi >= 25 && bmi <= 29.9){
            LabelOutlet.text = "Your Body Mass Index is \(bmi).\nThis is condidered Overweight."
            desimageOutlet.image = UIImage(named: "overWeight")
        }
        else if (bmi >= 30){
            LabelOutlet.text = "Your Body Mass Index is \(bmi).\nThis is condidered Obesity."
            desimageOutlet.image = UIImage(named: "obese")
        }
    }
    
}

