class Zoo{
    let animal : String
    let food : String
    var thezoos :Dictionary<String,String> = ["Elephant":"herbivorous","Monkey":"Banana","Tiger":"Carnivorous"]
    
    init(animal:String, food:String){
        self.animal = animal
        self.food = food
    }
    func zooFood()->[ String:String ]{
        println("\(zooFood())")
        return thezoos
        
    }
    func addZoo()->[String:String]{
        thezoos["cat"] = "rice"
        return thezoos;
    }
    func changzoo() ->[String : String]{
        thezoos["Monkey"]="milk"
        return thezoos;
    }
}
  let zooooo = Zoo(animal: "Money", food: "Banana")
    zooooo.addZoo()
    zooooo.changzoo()