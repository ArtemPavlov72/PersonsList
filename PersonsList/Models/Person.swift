//
//  Person.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//
import  Foundation

struct Person {
    let name: String
    let secondName: String
    let numberPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

// заполнение массива случайными не повторяющимися данными
extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.realNames.shuffled()
        let secondsNames = DataManager.shared.realSecondNames.shuffled()
        let phoneNumbers = DataManager.shared.realNumbersPhones.shuffled()
        let emails = DataManager.shared.realEmails.shuffled()
        
        // в нашем случае iterationCount не имеет смысла, так как у нас во всех массивах число элементов равно. Если бы было разным, то можно использовать наименьший индекс
        
        let iterationCount = min(
            names.count,
            secondsNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                secondName: secondsNames[index],
                numberPhone: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
     return persons
    }
}

enum Contacts: String {
    case phone = "phone" //название кнопочек, которые используем на втором экране
    case email = "tray" //название кнопочек
}




