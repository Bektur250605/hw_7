
import Foundation


//
//№1. Через readLine вводится любое количество слов
//После чего эти слова сортируются по количеству символов
//Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное


// #1
//var readline = readLine()!
//
//var array = [String]()
//var word = ""
//for i in readline  {
//    if i != ","  && i != "." && i != " "{
//        word += String(i)
//    }else{
//        array.append(word)
//        word = ""
//    }
//
//}
//var arraySort = array.sorted()
//print(arraySort)
////append добовлять в массив



//#2
//№2. Составить список из 20 (словарь) контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено


//var arrayNumbers: [String: Int] = ["Bektur" : 0777777777, "Ali" : 0550505050, "Ermek"  : 0222222222,"Tailan" : 09999999999,"Dastan" : 0666666666, "Arslan": 0555070605, "Elina" : 0444040404, "Mother" : 0772232365, "Dad" : 0700202020, "Myrzaiym" : 0777040302, "Uluc" : 0234567889, "Adil" : 0484848484, "Erjan" : 0550505505, "Raul" : 0700707070, "Tima" : 0222202020, "Nuric baike" : 0600606606, "Nurdin baike": 0100101010, "Shama" : 0303040050, "Sadyr" : 0111010101, "Islam" : 0202020202]

var list = [[String]]()
var sortirovat = [[String]]()

func sortirovka(sortirovka1: String){
    var lol = sortirovka1.first!
    var loh = false
    for (index, item) in list.enumerated(){
        for (index1, item1) in item.enumerated(){
            if index1 == 0 && item1 == String(lol) && loh == true{
                list [index].append(sortirovka1)
                loh = true
            }else {
                continue
            }
        }
    }
    if loh == false{
        var contacts = [String]()
        contacts.append(String(loh))
        contacts.append(sortirovka1)
        list.append(contacts)
        
        
    }
}
sortirovka(sortirovka1: "Bektur - 0777777777")
sortirovka(sortirovka1: "Ali - 0550505050")
sortirovka(sortirovka1: "Ermek - 0222222222")
sortirovka(sortirovka1: "Tailan - 09999999999")
sortirovka(sortirovka1: "Dastan - 0666666666")
sortirovka(sortirovka1: "Arslan - 0555070605")
sortirovka(sortirovka1: "Elina - 0234567889")
sortirovka(sortirovka1: "Mother - 0484848484")
sortirovka(sortirovka1: "Dad - 0700202020")
sortirovka(sortirovka1: "Myrzaiym - 0777040302")
sortirovka(sortirovka1: "Uluc - 0234567889")
sortirovka(sortirovka1: "Adil - 0484848484")
sortirovka(sortirovka1: "Erjan - 0550505505")
sortirovka(sortirovka1: "Raul - 0700707070")
sortirovka(sortirovka1: "Tima - 0222202020")
sortirovka(sortirovka1: "Nuric baike - 0600606606")
sortirovka(sortirovka1: "Nurdin baike - 0100101010")
sortirovka(sortirovka1: "Shama - 0600606606")
sortirovka(sortirovka1: "Sadyr -0111010101")
sortirovka(sortirovka1: "Islam - 0202020202")


var abc = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U"]
var fck = 0
for (index1, item1) in sortirovat.enumerated(){
    print("\(item1[0]) - \(sortirovat[index1].count - 1)")
}
print(sortirovat)
print(list)
