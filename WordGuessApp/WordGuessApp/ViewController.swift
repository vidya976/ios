//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Nalluri,Srividya on 3/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!
    
    @IBOutlet weak var LetterEntered: UITextField!
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var StatusLabel: UILabel!
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    var words = [["Java","Programming language"],
    ["Whale","Biggest Water Mammal"],["Car","Four Wheeler"],["Infinity","Symbol of Eternity"]]
    
    var count = 0
    var word = ""
    var letterGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Here we are updating the first screen and check button should be disabled
        CheckButton.isEnabled = false
        //firstly we should update the Display labl with the underscores of the first word
        word = words[count][0]
        DisplayLabel.text = ""
        updateDisplayLabel()
        //Update the hint label with the First hint
        HintLabel.text = "Hint: \(words[count][1])"
        //Lastly update the status label
        StatusLabel.text = ""
    }
    
    @IBAction func CheckButtonClicked(_ sender: UIButton) {
        //Get the text from the text field.
                var letter = LetterEntered.text!
                
                //Replace the guessed letter if the letter is part of the word.
                letterGuessed = letterGuessed + letter
                 var revealedWord = ""
                for l in word{
                    if letterGuessed.contains(l){
                        revealedWord += "\(l)"
                    }
                    else{
                        revealedWord += "_ "
                    }
                }
                //Assigning the word to displaylabel after a guess
                DisplayLabel.text = revealedWord
                LetterEntered.text = ""
                
                //If the word is guessed correctly, we are enabling play again button and disabling the check button.
                if DisplayLabel.text!.contains("_") == false{
                    PlayAgainButton.isHidden = false;
                    CheckButton.isEnabled = false;
                }
                CheckButton.isEnabled = false
    }
    
    @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
        //Reset the button to disable initially.
                PlayAgainButton.isHidden = true
                //clear the label
                letterGuessed = ""
                count += 1
                //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
                if count == words.count{
                    
                    StatusLabel.text = "Congruations! You are done with the game!"
                    //clearing the labels.
                    DisplayLabel.text = ""
                    HintLabel.text = ""
                }
                else{
                    //fetch the next word from the array
                    word = words[count][0]
                    //fetch the hint related to the word
                    HintLabel.text = "Hint: "
                    HintLabel.text! += words[count][1]
                    //Enabling the check button.
                    CheckButton.isEnabled = true
                    
                    DisplayLabel.text = ""
                    updateDisplayLabel()
                }
    }
    
    
    @IBAction func EnterLabelChanged(_ sender: UITextField) {
        //Read the data from the text field
        var textEntered = LetterEntered.text!;
                //Consider only the last character by calling textEntered.last and trimming the white spaces.
                textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
                LetterEntered.text = textEntered
                
                //Check whether the entered text is empty or not to enable check button.
                if textEntered.isEmpty{
                    CheckButton.isEnabled = false
                }
                else{
                    CheckButton.isEnabled = true
                }
                
    }
    
    func updateDisplayLabel(){
        for letr in word{
            DisplayLabel.text! += "_ "
        }
    }
}

