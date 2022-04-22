//
//  ViewController.swift
//  MyFirstProdject
//
//  Created by Гость on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonShare: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonChangeResultLable: UIStepper!
    
    
    var numberOne = ""
    var numberTwo = ""
    var numberThree = ""
    var operand = ""

    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        else
        {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    
    @IBAction func clearAction(_ sender: Any) {
        numberOne = ""
        numberTwo = ""
        numberThree = ""
        resultLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonOne.layer.cornerRadius = 36
        buttonTwo.layer.cornerRadius = 36
        buttonThree.layer.cornerRadius = 36
        buttonFour.layer.cornerRadius = 36
        buttonFive.layer.cornerRadius = 36
        buttonSix.layer.cornerRadius = 36
        buttonSeven.layer.cornerRadius = 36
        buttonEight.layer.cornerRadius = 36
        buttonNine.layer.cornerRadius = 36
        buttonAC.layer.cornerRadius = 36
        buttonPlus.layer.cornerRadius = 36
        buttonShare.layer.cornerRadius = 36
        buttonEquals.layer.cornerRadius = 36
        buttonMinus.layer.cornerRadius = 36
        buttonMultiply.layer.cornerRadius = 36
        buttonZero.layer.cornerRadius = 36
        
 
    }


    @IBAction func resultAction(_ sender: UIButton) {
        var result = 0.0
         
         switch operand {
         case "/":
             result = Double (numberOne)! / Double(numberTwo)!
         case "+":
             result = Double (numberOne)! + Double(numberTwo)!
         case "-":
             result = Double (numberOne)! - Double(numberTwo)!
         case "*":
             result = Double (numberOne)! * Double(numberTwo)!
         default:
             break
         }
         if result.truncatingRemainder(dividingBy: 1.0) == 0.0 {
             resultLabel.text = String(Int(result))
         }
         else
         {
             resultLabel.text = String(result)
         }
         }
    
        
}

