//
//  ViewController.swift
//  ClimateEvaluationApp
//
//  Created by Nalluri,Srividya on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempOutlet: UITextField!
    
    @IBOutlet weak var DisplayimageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        var temp:Int = Int(tempOutlet.text!)!
        if temp > 32{
            DisplayimageOL.image = UIImage(named: "sunny")
        }
        else if temp<33  && temp>20{
            DisplayimageOL.image = UIImage(named: "snowy")
        }
        else if temp<20{
            DisplayimageOL.image = UIImage(named: "winter")
        }

    }
    
}

