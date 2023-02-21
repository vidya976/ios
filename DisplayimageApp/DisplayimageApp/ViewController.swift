//
//  ViewController.swift
//  DisplayimageApp
//
//  Created by Nalluri,Srividya on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ButtonClicked(_ sender: UIButton) {
        ViewImageOL.image = UIImage(named: "cat1")
        DescriptionOL.text = "It is my cat"
    }
    
    
    @IBOutlet weak var ViewImageOL: UIImageView!
    
    
    @IBOutlet weak var DescriptionOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

