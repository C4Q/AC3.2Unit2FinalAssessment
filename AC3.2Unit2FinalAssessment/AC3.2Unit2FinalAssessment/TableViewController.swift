//
//  TableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Tyler Newton on 11/18/16.
//  Copyright © 2016 Tyler Newton. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
var crayons = [Crayon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        CrayonManager.manager.populateCrayons(CrayonData: crayolaColors)
        crayons = CrayonManager.manager.allcrayons
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)

        // Configure the cell...
        let color = crayons[indexPath.row]
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = "Hex Color: \(color.hex)"
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 0.9)
        if color.name == "Black"{
            cell.textLabel?.textColor = UIColor.white
            cell.detailTextLabel?.textColor = UIColor.white
        }
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "CrayonSegue", sender: nil)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CrayonSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            let colorName = crayons[indexPath.row]
            
            let destination = segue.destination as! CrayonViewController
            
            _ = destination.view
            
            destination.CrayonColorLabel.text = "\(colorName.name)"
            destination.RGBLabel.text = "RGB: \(colorName.rgb)"
            destination.view.backgroundColor = UIColor(displayP3Red: CGFloat(colorName.red), green: CGFloat(colorName.green), blue: CGFloat(colorName.blue), alpha: 1.0)
            if colorName.name == "Black"{
                destination.CrayonColorLabel?.textColor = UIColor.white
                destination.RGBLabel?.textColor = UIColor.white
            }
        }
    }
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

//}
