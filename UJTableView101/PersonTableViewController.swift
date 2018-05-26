//
//  PersonTableViewController.swift
//  UJTableView101
//
//  Created by Huncwot on 26.05.2018.
//  Copyright © 2018 Huncwot. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    let persons: [Person] = [
        Person.init(name: "Mikołaj", surname: "Kopernik"),
        Person.init(name: "Maria", surname: "Skłodowska-Curie"),
        Person.init(name: "Albert", surname: "Einstein"),
        Person.init(name: "Nikola", surname: "Tesla")
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath)
        cell.textLabel?.text = person.surname
        cell.detailTextLabel?.text = person.name
        return cell
    }

}
