//
//  ViewController.swift
//  Roshambo
//
//  Created by Mary Elizabeth McManamon on 5/17/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as!
        EndGameViewController
        controller.AmIPaper = false
        controller.AmIRock = false
        controller.AmIPaper = false
        
        if segue.identifier == "Scissors Seque" {
            controller.AmIScissors = true

        }
    }


}

