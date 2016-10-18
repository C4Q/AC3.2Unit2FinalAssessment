//
//  ControlsViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by John Gabriel Breshears on 10/13/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import UIKit

class ControlsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        label.text = String(slider.value)
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        label.text = String(stepper.value)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = textField.text
        return true
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.backgroundColor = UIColor.cyan
        label.text = "hi!"
        stepper.minimumValue = -5000
        // you can configure your views here
        // Do any additional setup after loading the view.
    }
    
}
