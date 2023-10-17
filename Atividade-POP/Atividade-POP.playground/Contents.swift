protocol Vehicle {
   mutating func start()
   mutating func stop()
   mutating func accelerate()
}

struct Car: Vehicle {
    var brand: String
    var model: String
    var isRunning: Bool = false
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    mutating func start() {
        if !isRunning {
            isRunning = true
            print("\(brand) \(model) ligou o motor.")
        }
    }
    
    mutating func stop() {
        if isRunning {
            isRunning = false
            print("\(brand) \(model) desligou o motor.")
        }
    }
    
    mutating func accelerate() {
        if isRunning {
            print("\(brand) \(model) está acelerando.")
        } else {
            print("\(brand) \(model) não pode acelerar porque o motor está desligado.")
        }
    }
}

var myCar: Vehicle = Car(brand: "Hyundai", model: "HB20")
myCar.start()
myCar.accelerate()
myCar.stop()
myCar.accelerate()
