//
//  DataManager.swift
//  PersonsList
//
//  Created by Artem Pavlov on 08.09.2021.
//

class DataManager {
    
    static let shared = DataManager() // создаем единственный объект класса внутри самого класса и делаем статическим, чтобы на него можно было ссылаться из других частей кода.
    
    let realNames = [
        "John",
        "Steven",
        "Misha",
        "Boris",
        "Melanie",
        "Bred",
        "Ted",
        "Sharon"
    ]
    
    let realSecondNames = [
        "Smith",
        "Karter",
        "White",
        "Brown",
        "Willis",
        "Trump",
        "Pitt",
        "Dancher"
    ]
    
    let realNumbersPhones = [
        "8-900-600-80-80",
        "8-900-555-55-40",
        "8-800-100-55-55",
        "8-999-640-80-10",
        "8-950-600-40-44",
        "8-955-440-42-22",
        "8-900-220-20-20",
        "8-800-200-33-33"
    ]
    
    let realEmails = [
        "222@swiftbook.ru",
        "tit@mail.ru",
        "pholik@mail.ru",
        "dodds@icloud.com",
        "my@gmail.com",
        "biggi@rambler.ru",
        "cat@swiftbook.ru",
        "works@mail.ru"
    ]
    
    private init() {}  // делаем пустой инициализатор, чтобы нельзя было создать лишние объекты класса DataManager
}
