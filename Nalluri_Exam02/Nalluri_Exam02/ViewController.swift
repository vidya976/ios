//
//  ViewController.swift
//  Nalluri_Exam02
//
//  Created by Nalluri,Srividya on 4/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StateOL: UITextField!
    
    @IBOutlet weak var BirdImageOL: UIImageView!
    
    var States = ["Australia","United States","Canada","New Zealand","South Korea"]
    
    var images = ["emu","Bald_eagle","jay","kiwi","magpie"]
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DisplayBTNclicked(_ sender: Any) {
        var text = StateOL.text!
        
        count = 0
        
        for state in States{
            
            if state == text{
                break
            }
            else{
                count += 1
            }
        }
        BirdImageOL.image = UIImage(named: images[count])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "Animatesegue"){
            var destination = segue.destination as! AnimateViewController
            
            destination.BirdName = images[count]
        }
    }
    
}

