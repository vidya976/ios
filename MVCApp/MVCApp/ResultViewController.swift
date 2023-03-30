//
//  ResultViewController.swift
//  MVCApp
//
//  Created by Nalluri,Srividya on 3/30/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var DisAmountOL: UILabel!
    
    @IBOutlet weak var DisDiscountOL: UILabel!
    
    @IBOutlet weak var DisResultOL: UILabel!
    
    //to store the values from view controller
    var destinationAmount = ""
    var destinationDiscountRate = ""
    var destinationResult = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        DisAmountOL.text! = DisAmountOL.text! + destinationAmount
        DisDiscountOL.text! = DisDiscountOL.text! + destinationDiscountRate
        DisResultOL.text! = DisResultOL.text! + destinationResult
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
