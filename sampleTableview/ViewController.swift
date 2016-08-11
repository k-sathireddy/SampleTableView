//
//  ViewController.swift
//  sampleTableview
//
//  Created by Enterpi mini mac on 8/11/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var classTextField: UITextField!
    
    var estRent = [AnyObject]()
    
    @IBAction func goButtonAction(sender: UIButton) {
        estRent.append(nameTextField.text!)
        estRent.append(ageTextField.text!)
        estRent.append(classTextField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        [estRent .removeAll()]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        print(estRent)
        if (segue.identifier == "LoadView") {
            let svc = segue.destinationViewController as! RentTableViewController
            svc.rentArray = self.estRent
        }
    }

}

