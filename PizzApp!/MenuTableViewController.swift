//
//  MenuTableViewController.swift
//  PizzApp!
//
//  Created by Grzegorz Droszcz on 22/03/2023.
//

import UIKit
import SwipeCellKit

class MenuTableViewController: UITableViewController {
    
    var ingredients = [Ingredients]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80.0
        
        let ingredient1 = Ingredients()
        ingredient1.name = "Flour type 00"
        ingredient1.amount = "250g"
        ingredients.append(ingredient1)

        let ingredient2 = Ingredients()
        ingredient2.name = "Warm water"
        ingredient2.amount = "100 ml"
        ingredients.append(ingredient2)

        let ingredient3 = Ingredients()
        ingredient3.name = "Sugar"
        ingredient3.amount = "1 teaspoon"
        ingredients.append(ingredient3)

        let ingredient4 = Ingredients()
        ingredient4.name = "Fresh yeast"
        ingredient4.amount = "25g"
        ingredients.append(ingredient4)

        let ingredient5 = Ingredients()
        ingredient5.name = "Salt"
        ingredient5.amount = "1/2 teaspoon"
        ingredients.append(ingredient5)

        let ingredient6 = Ingredients()
        ingredient6.name = "Canned tomatoes"
        ingredient6.amount = "1 can"
        ingredients.append(ingredient6)

        let ingredient7 = Ingredients()
        ingredient7.name = "Tomatoes' concentrate"
        ingredient7.amount = "1 tablespoon"
        ingredients.append(ingredient7)

        let ingredient8 = Ingredients()
        ingredient8.name = "Olive oil"
        ingredient8.amount = "3 tablespoons"
        ingredients.append(ingredient8)

        let ingredient9 = Ingredients()
        ingredient9.name = "Oregano herb"
        ingredient9.amount = "A pinch"
        ingredients.append(ingredient9)

        let ingredient10 = Ingredients()
        ingredient10.name = "Mozzarella cheese"
        ingredient10.amount = "As much as you like"
        ingredients.append(ingredient10)

        let ingredient11 = Ingredients()
        ingredient11.name = "Toppings as you wish and like"
        ingredient11.amount = "As much as you like"
        ingredients.append(ingredient11)



    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return ingredients.count
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        struct staticVariable { static var tableIdentifier = "ingredientCell"}
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell" ) as! SwipeTableViewCell

            cell = SwipeTableViewCell(style: .subtitle, reuseIdentifier: staticVariable.tableIdentifier)
       
        cell.textLabel?.text = ingredients[indexPath.row].name
        cell.detailTextLabel?.text = ingredients[indexPath.row].amount

        
        cell.delegate = self

        return cell
    }
}


//MARK: - Swipe Cell Delegate Method

extension MenuTableViewController: SwipeTableViewCellDelegate {
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            
            self.ingredients.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }

        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }
}
