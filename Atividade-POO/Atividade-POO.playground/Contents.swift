class Car {
    var brand: String
    var model: String
    var isRunning: Bool = false
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func start() {
        if !isRunning {
            isRunning = true
            print("\(brand) \(model) ligou o motor.")
        }
    }
    
    func stop() {
        if isRunning {
            isRunning = false
            print("\(brand) \(model) desligou o motor.")
        }
    }
    
    func accelerate() {
        if isRunning {
            print("\(brand) \(model) está acelerando.")
        } else {
            print("\(brand) \(model) não pode acelerar porque o motor está desligado.")
        }
    }
}

let myCar = Car(brand: "Toyota", model: "Supra")

myCar.start()
myCar.accelerate()
myCar.stop()
myCar.accelerate()
