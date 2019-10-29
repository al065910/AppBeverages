//
//  ViewController.swift
//  AppBeverages
//
//  Created by Alejo F. Sastre Martínez on 29/10/2019.
//  Copyright © 2019 Alejo F. Sastre Martínez. All rights reserved.
//

import UIKit

struct Beverage {
    let name : String
    let image : UIImage
}

class BeverageMenuViewController: UIViewController {

    lazy var beverages : [Beverage] = {
        let bundle = Bundle(for: type(of: self))
        
        let grapefruit = Beverage(name: "Grapefruit Elderflower", image: UIImage(named: "Easy-Grapefruit-Elderflower.jpg", in: bundle, compatibleWith: nil)!)
        let punch = Beverage(name: "Punch", image: UIImage(named: "punch.jpg", in: bundle, compatibleWith: nil)!)
        let watermelon = Beverage(name: "Rosemary Watermelon", image: UIImage(named: "rosemary-watermelon.jpg", in: bundle, compatibleWith: nil)!)
        let sweet_poison = Beverage(name: "Sweet Poison", image: UIImage(named: "sweet_poison.png", in: bundle, compatibleWith: nil)!)
        
        return[ grapefruit, punch, watermelon, sweet_poison]
    }()
    
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
}

extension BeverageMenuViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beverages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageCell", for: indexPath) as! BeverageCellTableViewCell
        let beverage = beverages[indexPath.row]
        
        cell.nameLabel.text = beverage.name
        cell.beverageImageView.image = beverage.image
        
        return cell
    }
}
