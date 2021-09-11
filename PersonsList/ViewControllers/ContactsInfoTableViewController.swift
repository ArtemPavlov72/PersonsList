//
//  ContactsInfoTableViewController.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//

import UIKit

class ContactsInfoTableViewController: UITableViewController {

    var personsVC: [Person] = []
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsVC.count
    }

    //Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsVC[section].fullName
    }
    
    //хардкордим две строки
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = personsVC[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        // заполняем телефон и почту в секции
        switch indexPath.row {
        case 0:
            content.text = person.numberPhone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    // чтобы автоматически убиралось выделение с строчки
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
