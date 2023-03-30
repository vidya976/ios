//
//  ViewController.swift
//  MVCApp
//
//  Created by Nalluri,Srividya on 3/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AmountOL: UITextField!
    
    @IBOutlet weak var DiscountRateOL: UITextField!
    
    var price = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalButtonClicked(_ sender: Any) {
        var amount = Double(AmountOL.text!)
        print(amount!)
        var discountrate = Double(DiscountRateOL.text!)
        print(discountrate!)
        price = amount! - (amount! * discountrate!/100)
        print(price)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //create a transition
        var transition = segue.identifier
        //create destination
        if(transition == "Resultsegue"){
            //reach the destination
            var destination = segue.destination as! ResultViewController
            
            destination.destinationAmount = AmountOL.text!
            destination.destinationDiscountRate = DiscountRateOL.text!
            destination.destinationResult = String(price)
        }
    }
}

