//
//  ViewController.swift
//  UITableViewTutorial
//
//  Created by Stephen Feuerstein on 10/16/18.
//  Copyright © 2018 Refactor Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.estimatedRowHeight = 44.0
            tableView.rowHeight = UITableView.automaticDimension
        }
    }
    
    let testData = ["Anakin Skywalker", "Luke Skywalker", "Leia Organa", "Han Solo", "Obi-Wan Kenobi", "Darth Vader", "A really really long Star Wars name that nobody remembers",
                    "Boba Fett", "Darth Maul", "Count Dooku", "Emperor Palpatine", "Chewbacca", "Jabba the Hutt", "Another absurdly long name from those movies that nobody remembers",
                    "Qui-Gon Jinn", "Darth Plagueis", "Commander Thrawn", "Kylo Ren", "Rey", "Finn"]
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomTableViewCell
        cell.nameLabel.text = testData[indexPath.row]
        return cell
    }
}
