//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Nalluri,Srividya on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBOutlet weak var HappyOutlet: UIButton!
    
    @IBOutlet weak var SadOutlet: UIButton!
    
    @IBOutlet weak var AngryOutlet: UIButton!
    
    @IBOutlet weak var ShakeMeOutlet: UIButton!
    
    @IBOutlet weak var ShowOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        //moving image outlet out of the frame view.
        ImageOutlet.frame.origin.x = view.frame.maxX
        HappyOutlet.frame.origin.x = view.frame.maxX
        SadOutlet.frame.origin.x = view.frame.maxX
        AngryOutlet.frame.origin.x = view.frame.maxX
        ShakeMeOutlet.frame.origin.x = view.frame.maxX
    }
    
    @IBAction func ShowButtonClicked(_ sender: Any) {
    }
    
    @IBAction func HappyButtonClicked(_ sender: Any) {
        UpdateImageview("Happy")
    }
    
    @IBAction func SadButtonClicked(_ sender: Any) {
        UpdateImageview("Sad")
    }
    
    @IBAction func AngryButtonClicked(_ sender: Any) {
        UpdateImageview("Angry")
    }
    
    @IBAction func ShakeMeButtonClicked(_ sender: Any) {
    }
    func UpdateImageview(_ ImageName : String){
        UIView.animate(withDuration: 1, animations: {
            self.ImageOutlet.alpha = 0
        })
        UIView.animate(withDuration: 1, animations: {
            self.ImageOutlet.alpha = 1
            self.ImageOutlet.image = UIImage(named: ImageName)
        })
    }
}

