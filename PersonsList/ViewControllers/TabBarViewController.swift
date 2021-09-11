//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by iMac on 11.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    private func setupViewControllers() {
        let persons = Person.getContactList() //при загрузки TabBarController происходит заполнение экземпляра Person
        let
    }


}
