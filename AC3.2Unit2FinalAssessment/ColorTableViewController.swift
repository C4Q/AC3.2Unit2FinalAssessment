//
//  ColorTableViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by John Gabriel Breshears on 10/13/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {
//.5 is asking for me...
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for c in crayolaColors {
            if let crayon = Crayon(fromDict: c) {
                crayons.append(crayon)
            }
        }
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

   
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return crayolaColors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        // Configure the cell...
        
        let crayon = crayons[indexPath.row]
        
        cell.backgroundColor = UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 1)

        cell.textLabel?.text = crayon.name
        
        return cell
    }
   
    ////OKAY So get to know this func. B/C everytime the button is pressed this func tells the segue what to do.... Look into this more
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier: "detailColor", sender: crayons[indexPath.row])
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

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailColor" {
            let vc = segue.destination as! CrayonViewController
            let crayon = sender as! Crayon
            vc.view.backgroundColor = UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 1)
            vc.colorLabel.text = crayon.name
        }
        
    }
}
