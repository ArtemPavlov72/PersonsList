//
//  ContactListViewController.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {

    var personsVC: [Person] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsVC.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personsVC[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ContactDetailsViewController
            detailVC.person = personsVC[indexPath.row]
        }
    }


}
