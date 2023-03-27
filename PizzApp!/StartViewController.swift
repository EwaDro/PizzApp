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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
