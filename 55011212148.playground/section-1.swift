let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplict:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplict:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "WhoopieCushion"


var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs" , "Milk"]
//var shoppingListExplicit: [String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolat Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bbananas","Apples"]
shoppingList

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items
shoppingList += ["Chocolate Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple", atIndex: 0)
//shoppingList now contains 7 items
//"Maple Syrup" is now the frist iem in the list

shoppingList.append("Flour")
//shoppingList now contains 3 items,and someone is making pancakes

shoppingList += ["Baking Powder"]

var FirstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList [4...6] = ["bannanas","Apples"]
//shoppingList now contains 6 items


let array: Array<Int> = [1, 2, 3, 4]
let dictionary: Dictionary<String, Int> = ["dog": 1, "elephant": 2]


var airports: [String: String] = ["TYO" : "Tokyo","DUB":"Dublin"]

if airports.isEmpty{
    println("The airports dictionary is empty.");
}else{
    print("The airports dictionary is not empty")
}
//println "The airports dictionary is not empty."

print("The airports dictionary contians \(airports.count) item.")
//println "The airports dictionary contains 2 item."

airports["LHR"] = "London"
//the airports dictionary now contains 3 items

airports["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airports.updateValue("Dublin Tnternational", forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}
//println "The old value for DUB was Dublin."

