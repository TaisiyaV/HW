//Напишите консольную программу, которая принимает от пользователя два параметра: букву, число.
//Вывести в консоль список всех фамилий, начинающихся на данную букву,
//если их владелец имеет пол, соответствующий введённому числу.
//Источником является массив, подготовленный заранее.

import UIKit

let users = [ ("Абрамов", 1), ("Трофимов", 1), ("Маслов", 1), ("Анисимова", 2), ("Мухина", 2), ("Акулов", 1), ("Михайлов", 1), ("Панова", 2), ("Гусев", 1), ("Коновалов", 1), ("Капустина", 2) ]

func param (char: Character, gender: Int) {
    var results: [String] = []
    
    for user in users {
        let lastName = user.0
        if char.uppercased() == lastName.first?.uppercased() && gender == user.1 {
            results.append(lastName)
        }
    }
    
    if results.count == 0 {
        print ("Данные не найдены")
    } else {
        print (results.joined(separator: "\n"))
    }
}

param(char: "а", gender: 1)
param(char: "П", gender: 2)
param(char: "ю", gender: 1)

    
    




