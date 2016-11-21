//
//  SettingsViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tyler Newton on 11/19/16.
//  Copyright © 2016 Tyler Newton. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var numberInputTextField: UITextField!
    
    let maxValue:Double = 10
    let minValue:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 0
        
        outputLabel.text = "Default Label"
        
        numberInputTextField.delegate = self

        slider.maximumValue = Float(maxValue)
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //sets the label equal to the user input in the text field.
        if let text = Double(numberInputTextField.text!){
            outputLabel.text = "\(text)"
        } else {
            outputLabel.text = "Please print valid number."
        }
        //After receiving user input the keyboard will disappear.
        numberInputTextField.resignFirstResponder()
        return true
    }
    //MARK: Actions
    
    @IBAction func sliderValueChanges(_ sender: UISlider) {
        if slider.value > Float(maxValue){
            slider.value = Float(maxValue)
        } else if slider.value < Float(minValue){
            slider.value = Float(minValue)
        }
        outputLabel.text = "\(slider.value)"
        stepper.value = Double(slider.value)
        numberInputTextField.text = outputLabel.text
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        if stepper.value > Double(maxValue){
            stepper.value = Double(maxValue)
        } else if stepper.value < Double(minValue){
            stepper.value = Double(minValue)
        }
        
        outputLabel.text = "\(stepper.value)"
        slider.value = Float(stepper.value)
        numberInputTextField.text = outputLabel.text
    }
    
    @IBAction func textFieldEditingDidEnd(_ sender: UITextField) {
        
        if let numberText = numberInputTextField.text,  var textVal = Double(numberText){
        if textVal > maxValue{
            textVal = maxValue
        } else if textVal < minValue {
            textVal = minValue
        }
        slider.value = Float(textVal)
        stepper.value = Double(textVal)
        
        //updateAll();
        
        outputLabel.text = String(textVal)
    }
}

    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        outputLabel.text = "Set Value"
        numberInputTextField.text = "Set Value"
        slider.value = 0
        
    }
    
    func updateAll(){
        
    }
}
