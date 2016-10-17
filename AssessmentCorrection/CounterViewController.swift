//
//  CounterViewController.swift
//  AssessmentCorrection
//
//  Created by Madushani Lekam Wasam Liyanage on 10/12/16.
//  Copyright © 2016 Madushani Lekam Wasam Liyanage. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController, UITextFieldDelegate {
    
    var count = 0.0

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
         //slider.value = Float(count)
       // adjustValuesAndPositions()
        stepper.value = Double(slider.value)
        inputTextField.text = String(slider.value)
        valueLabel.text = String(slider.value)
    
        
    }
    @IBAction func stepperTapped(_ sender: UIStepper) {
        //stepper.stepValue = Double(count)
       // adjustValuesAndPositions()
        slider.value = Float(stepper.value)
        inputTextField.text = String(stepper.value)
        valueLabel.text = String(stepper.value)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, let doubleText = Double(text), let floatText = Float(text) {
          //  count = doubleText
            stepper.value = doubleText
            slider.value = floatText
            valueLabel.text = text
            
        }
        return true
    }
    
    func adjustValuesAndPositions() {
        slider.value = Float(count)
        stepper.value = count
        inputTextField.text = String(count)
        
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
