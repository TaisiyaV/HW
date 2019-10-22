// Опишите в программе два класса: Человек (ФИО, возраст, паспорт), Паспорт (Серия, Номер, Человек) и инициализируйте их.

import Foundation

class Person {
    let fullName: String
    let age: Int
    var passport: Passport?
    
    init (fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
        print ("\(fullName) инициализируется")
    }
    
    deinit {
        print ("\(fullName) деинициализируется")
    }
    
}

class Passport {
    let passportSeries: Int
    let passportNumber: Int
    unowned let person: Person
    
    init(passportSeries: Int, passportNumber: Int, person: Person) {
        self.passportSeries = passportSeries
        self.passportNumber = passportNumber
        self.person = person
        print("Паспорт серия \(passportSeries), номер \(passportNumber) инициализируется")
    }
    
    deinit {
        print ("Паспорт серия \(passportSeries), номер \(passportNumber) деинициализируется")
    }
    
}

func classInitExample () {

    var person1: Person?

    person1 = Person (fullName: "Петров Петр Петрович", age: 25)

    guard let person = person1 else {
        print ("Person not created")
        return
    }

    person.passport = Passport(passportSeries: 2222, passportNumber: 111111, person: person)

    person1 = nil
}


classInitExample()
