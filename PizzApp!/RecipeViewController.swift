//
//  RecipeViewController.swift
//  PizzApp!
//
//  Created by Grzegorz Droszcz on 28/03/2023.
//

import UIKit

class RecipeViewController: UIViewController {
    
    
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var doneButton: UIButton!
    
    
    let recipes = ["Mix 2 tablespoons of flour, 100 ml od warm water, sugar and yeast, cover the bowl and leave for 5 mins", "Mix the can of tomatoes with tomatoes' concentrate, one tablespoon of olive oil and punch of oregano herbs. Boil it", "Grate the cheese and prepare your favourite toppings - cut it (maschrooms like to be fried a little before putting on pizza)", "Take a dought and add the rest of flour, olive oil, salt and water - mix for 2-3 mins. It should be smooth. If it's too sticky - add some more flour, if it's too dry - add some water. Leave covered in the bowl for another 7 mins in warm place", "Turn the oven for max. temperature - heating up and down", "Take a dough, make it flat by your hands or with use of rolling pin. It's good to leave the edges thicker", "Put some sausce, cheese and toppings as much as you like. You can save the rest of sausce for another pizza in the fridge. Put it in the oven for a few mins - it's ready when the edges become golden", "Enjoy your pizza! Bon apetite!"]
    
    var recipeNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        recipeLabel.translatesAutoresizingMaskIntoConstraints = false
        recipeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        recipeLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        recipeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        recipeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        recipeLabel.sizeToFit()
        
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        doneButton.backgroundColor = .red
        doneButton.titleLabel?.textColor = .yellow
        doneButton.topAnchor.constraint(equalTo: recipeLabel.bottomAnchor, constant: -5).isActive = true
        doneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        updateUI()
        

    }
    

    @IBAction func stepOfRecipeDone(_ sender: UIButton) {

        if recipeNumber + 1 < recipes.count {
            recipeNumber += 1
        } else {
            recipeNumber = 7
        }
        updateUI()
        }
    
    func updateUI() {
        recipeLabel.text = recipes[recipeNumber]
                
    }
}
