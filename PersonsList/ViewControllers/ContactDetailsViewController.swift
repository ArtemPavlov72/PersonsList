//
//  ContactDetailsViewController.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneLabel.text = "Phone: \(person.numberPhone)"
    }
    


}
