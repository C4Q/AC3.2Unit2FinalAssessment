//
//  SliderSwitcherViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Erica Y Stevens on 10/6/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class SliderSwitcherViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var horizontalSlider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var input: UITextField!
    
    // MARK: Actions
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        label.text = String(Int(horizontalSlider.value))
    }
    
    @IBAction func stepperChanges(_ sender: UIStepper) {
        label.text = String(Int(stepper.value))
    }
    
    // MARK: Built-In Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderChanges(horizontalSlider)
        stepperChanges(stepper)
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
