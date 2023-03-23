//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Nalluri,Srividya on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageviewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = ImageviewOutlet.frame.minX
        let miny = ImageviewOutlet.frame.minY
        print("(\(minx),\(miny))")
        let maxx = ImageviewOutlet.frame.maxX
        let maxy = ImageviewOutlet.frame.maxY
        print("(\(maxx),\(maxy))")
        let midx = ImageviewOutlet.frame.midX
        let midy = ImageviewOutlet.frame.midY
        print("(\(midx),\(midy))")
        //moving the image view to upper left corner i.e (0,0)
        ImageviewOutlet.frame.origin.x = 0
        ImageviewOutlet.frame.origin.y = 0
        
        //moving the image view to upper right corner i.e (314,0)
        ImageviewOutlet.frame.origin.x = 314
        ImageviewOutlet.frame.origin.y = 0
        
        //moving the image view to lower right corner i.e (314,796)
        ImageviewOutlet.frame.origin.x = 314
        ImageviewOutlet.frame.origin.y = 796
        
        //moving the image view to lower left corner i.e (0,796)
        ImageviewOutlet.frame.origin.x = 0
        ImageviewOutlet.frame.origin.y = 790
        
        //moving the image view to middle of the screen i.e (414/2 - 50,896/2 - 50)
        ImageviewOutlet.frame.origin.x = 157
        ImageviewOutlet.frame.origin.y = 398
    }


}

