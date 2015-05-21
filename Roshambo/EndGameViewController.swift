//
//  EndGameViewController.swift
//  Roshambo
//
//  Created by Mary Elizabeth McManamon on 5/20/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {
    
    var AmIScissors: Bool?
    var AmIRock: Bool?
    var AmIPaper: Bool?
    
    @IBOutlet weak var victoryImage: UIImageView!

    override func viewWillAppear(animated: Bool) {
       
        if ((self.AmIScissors) != nil){
            self.victoryImage!.image = UIImage(named: "ScissorsCutsPaper")
        } else if ((self.AmIPaper) != nil){
             self.victoryImage!.image = UIImage(named: "PaperCoversRock")
        } else if ((self.AmIRock) != nil){
            self.victoryImage!.image = UIImage(named: "RockCrushesScissor")
        } else {
            self.victoryImage!.image = nil
        }
        
        self.victoryImage!.alpha = 0
       
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.victoryImage!.alpha = 1
        }
    }


   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
