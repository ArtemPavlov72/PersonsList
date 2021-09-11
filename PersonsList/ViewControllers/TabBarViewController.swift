//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList() //при загрузки TabBarController происходит заполнение экземпляра Person
        guard let contactListVC = viewControllers?.first as? ContactListViewController else {return}
        guard  let contactsInfoVC = viewControllers?.last as? ContactsInfoTableViewController else {return}
        
        contactListVC.personsVC = persons // передаем данные на ContactListViewController
        contactsInfoVC.personsVC = persons // передаем данные на ContactsInfoTableViewController
    }
}
