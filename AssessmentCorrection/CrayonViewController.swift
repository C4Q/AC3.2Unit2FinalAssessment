//
//  CrayonViewController.swift
//  AssessmentCorrection
//
//  Created by Madushani Lekam Wasam Liyanage on 10/12/16.
//  Copyright © 2016 Madushani Lekam Wasam Liyanage. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    var detailCrayon: Crayon?
    
    @IBOutlet weak var colorLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let color = detailCrayon {
        view.backgroundColor = UIColor(red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 1)
        }
        // Do any additional setup after loading the view.

        colorLabel.text = detailCrayon?.name
        if colorLabel.text == "Black" {
            colorLabel.textColor = UIColor.white
        }
        

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
