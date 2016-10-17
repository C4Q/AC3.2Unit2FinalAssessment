//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Amber Spadafora on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
    
    var numOfcells = crayolaColors.count
    internal let rawColorData: [[String : Any]] = crayolaColors
    internal var colorData: [Crayon]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var colorContainer: [Crayon] = []
        for rawColor in rawColorData {
            colorContainer.append(Crayon(fromDict: rawColor)!)
        }
        colorData = colorContainer

    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numOfcells
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        if let colorCell: ColorTableViewCell = cell as? ColorTableViewCell {
            colorCell.colorLabel.text = colorData?[indexPath.row].name
            
            if let red = colorData?[indexPath.row].red, let blue = colorData?[indexPath.row].blue, let green = colorData?[indexPath.row].green {
            colorCell.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
            }
            
            return colorCell
        }
        
        cell.textLabel?.text = colorData?[indexPath.row].name
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let cvc = segue.destination as? CrayonViewController {
//           
//        }
   // }

}
