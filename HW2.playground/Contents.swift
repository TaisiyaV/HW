//Работник работает по сменному графику 2/2. Дневная смена, ночная смена, выходной, выходной. Напишите программу, определяющую соответствие даты и смены работника.
//Пользователь должен ввести в консоли, какая смена была 1-го января, а затем может вводить месяц и день для получения результата.

import UIKit

let workShift = ["день", "ночь", "выходной1", "выходной2"]

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.yyyy"

let date = dateFormatter.date(from: "01.01.2019")!

func shift (firstShift: String, dateToCheck: String) {

    guard let date1 = dateFormatter.date(from: dateToCheck) else {
        print ("Неверно указана дата")
        return
    }
    
    guard let indexShift = workShift.firstIndex(of: firstShift) else {
        print ("Неверно указана смена")
        return
    }
    
    let numbersOfDays = Calendar.current.dateComponents([.day], from: date, to: date1).day!
    
    let i = numbersOfDays % 4
  
    var workShift2 = workShift + workShift
    
    print (workShift2[indexShift + i])
    
}

shift(firstShift: "выходной1", dateToCheck: "08.01.2019")
shift(firstShift: "день", dateToCheck: "05.06.2019")

shift(firstShift: "выходной", dateToCheck: "04.01.2019")
shift(firstShift: "ночь", dateToCheck: "02.01")


