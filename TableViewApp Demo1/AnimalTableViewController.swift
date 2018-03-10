//
//  AnimalTableViewController.swift
//  TableViewApp Demo1
//
//  Created by MouseMaster on 2018/3/8.
//  Copyright © 2018年 MouseMaster. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    /*
     override var prefersStatusBarHidden: Bool{
        return true
    }
    */
    
    let animalArray = ["Mouse","Cow","Tiger","Rabbit","Dragon","Snack","Horse","Goat","Monkey", "Chicken","Dog","Pig"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        if let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath) as? SpecialTableViewCell{
            cell.specialLabel.text = animalArray[indexPath.row]
            cell.specialImageView.image = UIImage(named: animalArray[indexPath.row])
            return cell
        }else{
            let cell = UITableViewCell()
            cell.textLabel?.text = animalArray[indexPath.row]
            cell.imageView?.image = UIImage(named: animalArray[indexPath.row])
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            if let dvc = segue.destination as? DetailViewController{
                if let selectedRow = tableView.indexPathForSelectedRow?.row{
                    dvc.infoFromViewOne = animalArray[selectedRow]
                    dvc.navigationItem.title = animalArray[selectedRow]
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

}
