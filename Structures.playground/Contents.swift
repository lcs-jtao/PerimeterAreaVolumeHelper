import Cocoa

//The definition of a Person
struct Person {
    
    //MARK: Stored properties
    //These are properties that have an assigned value
    var age: Int
    var haircolor: String
    var name: String
    var height: Double
    var mass: Double
    
    //MARK: Computer properties
    //These are properties that combine stored properties to create another useful property
    var heightToMassRatio: Double {
        //The code inside this closure (the { and } brackets),
        //defines what is returned for this property
        return height / mass
    }
}

//Instances of a Person
var joyce = Person(age: 16, haircolor: "black", name: "Joyce", height: 165, mass: 50)
var gordon = Person(age: 44, haircolor: "red", name: "Gordon", height: 180, mass: 78)

joyce.height

gordon.mass
gordon.heightToMassRatio

//Assign new values
gordon.mass = 80

//See new value
gordon.mass
gordon.heightToMassRatio
