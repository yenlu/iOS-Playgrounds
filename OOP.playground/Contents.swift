protocol Vehicle {
    var wheels: Int {
        get
    }
    
    func move()
}

class Plane: Vehicle {
    var wheels: Int
    
    init() {
        wheels = 5
    }
    
    func move() {
        // code to move plane
        // fly
    }
}

class Car {
    let color: String
    let brand: String
    let year: Int
    
    //function to make the Car object
    init(color: String, brand: String, year: Int) {
        self.color = color
        self.brand = brand
        self.year = year
    }
    
    func start() {
        // write code here that starts the car
        print("started car")
    }
    
    func drive(speed: Int) {
        // write code to make the car drive
        print("driving at \(speed)mph")
    }
    
    func stop(){
        // stop code
        print("stopped car")
    }
}

//Camry inherits Car
class Camry: Car {
    var doors: Int
    
    init (color: String, year: Int, doors: Int){
        //calling init for superclass
        self.doors = doors
        
        super.init(color: color, brand: "Toyota", year: <#T##Int#>)
    }
    
}

//how to create a car
//var polo = Car.init()
//var mini = Car()

var polo = Car(color: "red", brand: "Toyota", year: 2017)
var mini = Car(color: "blue", brand: "Toyota", year: 2017)

var camry = Camry(color: "red", year: 2017, doors: 4)

print(polo.color)
print(mini.color)

polo.start()
polo.drive(speed: 50)
polo.stop()
