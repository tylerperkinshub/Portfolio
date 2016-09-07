//
//  GrailDiaryTableViewController.swift
//  SwiftGrailDiary
//
//  Created by Tyler on 8/17/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

class GrailDiaryTableViewController: UITableViewController
{
    
    var sites = Array<Sites>()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        title = "Presidential Libraries"
        
        loadGrailFacts()

        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return sites.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SitesCell", for: indexPath)

        // Configure the cell...
        let aSite = sites[indexPath.row]
        cell.textLabel?.text = aSite.location
        cell.detailTextLabel?.text = aSite.year
        
        
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?)
    {
       if segue.identifier == "ModalSiteDetailSegue"
       {
        let detailVC = segue.destination as! SiteDetailViewController
        let selectedCell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: selectedCell)
        let selectedSite = sites[(indexPath?.row)!]
        detailVC.site = selectedSite
        }
    
    }

    func loadGrailFacts()
    {
        do
        {
            let filePath = Bundle.main.path(forResource: "grailFacts", ofType: "json")
            let dataFromFile = try? Data(contentsOf: URL(fileURLWithPath: filePath!))
            let agentData: NSArray! = try JSONSerialization.jsonObject(with: dataFromFile!, options: []) as! NSArray
            for agentDictionary in agentData
            {
                let aSite = Sites(dictionary: agentDictionary as! NSDictionary)
                sites.append(aSite)
            }
        }
        catch let error as NSError
        {
            print(error)
        }
    }
    
}
