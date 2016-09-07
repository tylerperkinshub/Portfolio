t//
//  SiteDetailViewController.swift
//  SwiftGrailDiary
//
//  Created by Tyler on 8/17/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

class SiteDetailViewController: UIViewController
{
    @IBOutlet weak var libraryNameLabel: UILabel!

    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var factLabel: UILabel!
    
    var site: Sites!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        libraryNameLabel.text = site.site
        locationLabel.text = site.location
        yearLabel.text = site.year
        factLabel.text = site.fact
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func backPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }

}
