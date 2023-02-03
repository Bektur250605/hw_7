
import Foundation

class Card {
    var bankName: String
    var cardNumber: String
    var bill: Int
    
    init(bankName: String, cardNumber: String, bill: Int) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}

class Client {
    var firstName: String
    var lastName: String
    var cards: [Card]
    
    init(firstName: String, lastName: String, cards: [Card]) {
        self.firstName = firstName
        self.lastName = lastName
        self.cards = cards
    }
}

class Bank {
    static func transfer(fromClient: Client, toClient: Client) {
        print("Выберите Банк:")
        for (index, item) in fromClient.cards.enumerated() {
            print("\(index + 1) \(item.bankName)")
        }
        
        let readline = Int(readLine()!)! - 1
        let selectedCard = fromClient.cards[readline]
        print("Выберите: \(selectedCard.bankName)")
        
        print("укажите номер карты")
        let toCardNumberTransfer = readLine()!
        
        var toCard: Card?
        var toClientName = ""
        for client in [toClient] {
            for card in client.cards {
                if card.cardNumber == toCardNumberTransfer {
                    toCard = card
                    toClientName = "\(client.firstName) \(client.lastName)"
                    break
                }
            }
        }
        
        if let toCard = toCard {
            print("Получатель: \(toClientName)")
            
            print("Укажите число:")
            let amount = Int(readLine()!)!
            
            if amount > selectedCard.bill {
                print("не достаточно средств на вашей карте")
            } else {
                selectedCard.bill -= amount
                toCard.bill += amount
                print("\(amount) перевод успешно проведен")
            }
        } else {
            print("Карта не найдено")
        }
    }
}

// Main
let card1 = Card(bankName: "Bank1", cardNumber: "001", bill: 1000)
let card2 = Card(bankName: "Bank2", cardNumber: "0002", bill: 500)
let client1 = Client(firstName: "John", lastName: "Doe", cards: [card1, card2])

let card3 = Card(bankName: "Bank1", cardNumber: "0001", bill: 2000)
let client2 = Client(firstName: "Бектур", lastName: "Кто то ", cards: [card3])

Bank.transfer(fromClient: client1, toClient: client2)
class Card {
    var bankName: String
    var cardNumber: String
    var bill: Int
    
    init(bankName: String, cardNumber: String, bill: Int) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}

class Client {
    var firstName: String
    var lastName: String
    var cards: [Card]
    
    init(firstName: String, lastName: String, cards: [Card]) {
        self.firstName = firstName
        self.lastName = lastName
        self.cards = cards
    }
}

class Bank {
    static func transfer(fromClient: Client, toClient: Client) {
        print("Выберите Банк:")
        for (index, item) in fromClient.cards.enumerated() {
            print("\(index + 1) \(item.bankName)")
        }
        
        let readline = Int(readLine()!)! - 1
        let selectedCard = fromClient.cards[readline]
        print("Выберите: \(selectedCard.bankName)")
        
        print("укажите номер карты")
        let toCardNumberTransfer = readLine()!
        
        var toCard: Card?
        var toClientName = ""
        for client in [toClient] {
            for card in client.cards {
                if card.cardNumber == toCardNumberTransfer {
                    toCard = card
                    toClientName = "\(client.firstName) \(client.lastName)"
                    break
                }
            }
        }
        
        if let toCard = toCard {
            print("Получатель: \(toClientName)")
            
            print("Укажите число:")
            let amount = Int(readLine()!)!
            
            if amount > selectedCard.bill {
                print("не достаточно средств на вашей карте")
            } else {
                selectedCard.bill -= amount
                toCard.bill += amount
                print("\(amount) перевод успешно проведен")
            }
        } else {
            print("Карта не найдено")
        }
    }
}

// Main
let card1 = Card(bankName: "Bank1", cardNumber: "001", bill: 1000)
let card2 = Card(bankName: "Bank2", cardNumber: "0002", bill: 500)
let client1 = Client(firstName: "John", lastName: "Doe", cards: [card1, card2])

let card3 = Card(bankName: "Bank1", cardNumber: "0001", bill: 2000)
let client2 = Client(firstName: "Бектур", lastName: "Кто то ", cards: [card3])

Bank.transfer(fromClient: client1, toClient: client2)

