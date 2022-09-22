



//
//Разобрать числа от 1 до 1000
//Выписать через запятую все числа, кратные 2, 3, 4, 5 (для каждого числа разные переменные)

var number2 = ""
var number3 = ""
var number4 = ""
var number5 = ""

func numbers(){
    for num in 1...1000{
        if (num % 2 == 0) {
            number2 += "\(num),"
            print (number2)
        }else if (num % 3 == 0){
            number3 += " \(num),"
            print (number3)
        }else if (num % 4 == 0){
            number4 += " \(num),"
            print (number4)
        }else if (num % 5 == 0){
            number5 += " \(num),"
            print (number5)
        }
    }
}
print(numbers())




//Создать программу используя известные вам методы
//Рассчитать сумму кредита. Изначально сумма - 1000000 сом
//Процентная ставка в год - 24%
//С каждым годом % снижается на 1
//Рассчитать за какой срок человек сможет выплатить кредит, если на момент получения кредита его зарплата - 20000 сом и каждые 2 месяца она увеличивается на 2000

var credit: Float = 1000000.0
var salary: Float = 20000.0
var creditProcent: Float = 0.24
var month = 0


//Для начала высчитаем зп за год если зп увеличивается

func amount(){
    credit += (credit * creditProcent)
    for item in 1...100 {
            month += 1
        if item % 2 == 0 {
            salary += 2000
        }
        if item % 12 == 0{
        credit += (credit * creditProcent)
            creditProcent -= 0.01
            
            
        }
        print(credit)
        
        
        let monthProcent = creditProcent / 12
        print(monthProcent)
        
        let monthlypayment = salary * (1 - ( monthProcent / 100))
        credit -= monthlypayment
        if credit < 0 {
            break
            
        }
        print("million can be paid in \(month)")
}
}
amount()

//
//Доп:
//Используя условные операторы, функции и циклы создать следующую программу:
//Записать в одну переменную типа String 20 разных слов (с разной длиной) через запятую
//После того, как созданная ранее функция примет как аргумент созданную строку - вернет следующее (например) - “Яблоко - 6 символов \n Морковь - 7 символов” и т.д до последнего слова

var words = ["world", "time", "summer", "home", "keremet", "notebook", "it", "apple", "kind", "table", "cool", "mood", "can", "run", "judge", "jump", "school", "university", "pay", "mother"]

for item in words {
    print("In this word \(item) \(item.count) symbols")
}


// additional task

print("введите действие\n доступные действия: +, -, /, *, sin, cos")
let calculate = readLine()!

func action(number: Int, number2: Int, number3: Int){
    if calculate == "+" {
        print(number + number2)
    }else if calculate == "-"{
        print(number - number2)
    }else if calculate == "/"{
        print(number / number2)
    }else if calculate == "*"{
        print(number * number2)
        
// number - противолежащий катет number2 - гипотенуза number3 - прилежащий катет
    }else if calculate == "sin"{
        print(number/number2)
    }else if calculate == "cos"{
        print(number3/number2)
    }
}
print("Введите число №1")
let firstNumber = Int(readLine()!)
print("Введите число №2")
let secondNumber = Int(readLine()!)
print("Write the 3number")
let thirdnumber = Int(readLine()!)

action(number: firstNumber!, number2: secondNumber!, number3: thirdnumber!)



