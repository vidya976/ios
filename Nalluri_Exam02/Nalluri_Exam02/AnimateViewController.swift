//
//  AnimateViewController.swift
//  Nalluri_Exam02
//
//  Created by Nalluri,Srividya on 4/11/23.
//

import UIKit

class AnimateViewController: UIViewController {

    @IBOutlet weak var ImageViewOL: UIImageView!
    
    var BirdName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ImageViewOL.image = UIImage(named: BirdName)
        
    }
    

    @IBAction func RightCnrClicked(_ sender: Any) {
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 0
    
    }
    
     @IBAction func LeftCnrClicked(_ sender: Any) {
         ImageViewOL.frame.origin.x = 0
         ImageViewOL.frame.origin.y = 0
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
