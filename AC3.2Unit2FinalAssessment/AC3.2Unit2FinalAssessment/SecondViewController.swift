//
//  SecondViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Kadell on 10/6/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textOutput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoves(_ sender: UISlider) {
        var change = slider.value
        textOutput.text = String(Double(change))
        stepper.value = Double(sender.value)
    }

    @IBAction func stepperMoves(_ sender: UIStepper) {
        var change = stepper.value
        textOutput.text = String(Double(change))
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
