//
//  StartViewController.swift
//  PizzApp!
//
//  Created by Grzegorz Droszcz on 27/03/2023.
//

import UIKit
import CLTypingLabel

class StartViewController: UIViewController {
    
    
    @IBOutlet weak var myTypeWriterLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTypeWriterLabel.text = "PizzApp!"

    }
 

}
