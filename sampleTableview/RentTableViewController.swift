//
//  StudentTableViewController.swift
//  sampleTableview
//
//  Created by Enterpi mini mac on 8/11/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

import UIKit

class RentTableViewController: UITableViewController {
    
    var rentArray = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return rentArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "studentCell")
        let tableCell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("studentCell", forIndexPath: indexPath)
        let rentLabel: UILabel = UILabel.init(frame: CGRectMake(10, 10, 100, 25))
        rentLabel.text = rentArray[indexPath.row] as? String
        
        tableCell.addSubview(rentLabel)
        return tableCell
        
        
    }
    
}

