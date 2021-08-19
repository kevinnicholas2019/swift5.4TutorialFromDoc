//import PlaygroundSupport

//PlaygroundPage.current.needsIndefiniteExecution = true

//let languageName = "Swift asd dsa"
//
//print(languageName, separator: "")
//
//let 😚 = "Love you"; print(😚)
//
//let decimal = 17
//let binary = 0b10001
//let octal = 0o21
//let hex = 0x11
//
//let hexadecimalDouble = 0xC.3p0
//let hex479 = 0x1DF
//let coffee = 0xFFFFFF
//
//let values = 16 << 4
//let π = 3.14159
//let 你好 = "你好世界"
//let 🐶🐮 = "dogcow"
//let test = 0xCp1
//
//let kevin = (fn:"Kevin", ln:"Nicholas", old:23)
//let (first, last, umur) = kevin
//print(first)
//print("zebraa" >= "zebraa")
//print((4, "dogs") > (4, "dog"))
//for index in 1..<5 {
//    print(index)
//}
//let threeMoreDoubleQuotationMarks = #"""
//Here are three more double quotes: """
//"""#
//
//var favoriteGenres:Set<String> = Set<String>()
//favoriteGenres.insert("Rock")
//favoriteGenres.insert("Rock")
//favoriteGenres.insert("Classical")
//favoriteGenres.insert("Hip Hop")
//print(favoriteGenres)
//
//var namesOfIntegers:[Int:String]
//
//var (fn, ln, yo) = ("kevin", "nicholas", 23)
//print(fn)
//print(ln)
//print(yo)
//
//switch fn {
//case "kevinN":
//    break
//default:
//    print("kevin")
//    break
//}
//
//let somePoint = (0, 0)
//switch somePoint {
//case (0, 0):
//    print("\(somePoint) is at the origin")
//case (_, 0):
//    print("\(somePoint) is on the x-axis")
//case (0, _):
//    print("\(somePoint) is on the y-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is inside the box")
//default:
//    print("\(somePoint) is outside of the box")
//}
//// Prints "(1, 1) is inside the box"
//
//let anotherPoint = (2, 0)
//switch anotherPoint {
//case (let x, 0):
//    print("on the x-axis with an x value of \(x)")
//case (0, let y):
//    print("on the y-axis with a y value of \(y)")
//case let (x, y):
//    print("somewhere else at (\(x), \(y))")
//}
//
//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//case let (x, y) where x == y:
//    print("(\(x), \(y)) is on the line x == y")
//case let (x, y) where x == -y:
//    print("(\(x), \(y)) is on the line x == -y")
//case let (x, y):
//    print("(\(x), \(y)) is just some arbitrary point")
//}
//
//let integerToDescribe = 5
//var description = "The number \(integerToDescribe) is"
//switch integerToDescribe {
//case 2, 3, 5, 7, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer."
//}
//print(description)
//
//let finalSquare = 25
//var board = [Int](repeating: 0, count: finalSquare + 1)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//var square = 0
//var diceRoll = 0
//
//gameLoop: while square != finalSquare {
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    switch square + diceRoll {
//    case finalSquare:
//        // diceRoll will move us to the final square, so the game is over
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        // diceRoll will move us beyond the final square, so roll again
//        continue gameLoop
//    default:
//        // this is a valid move, so find out its effect
//        square += diceRoll
//        square += board[square]
//    }
//}
//print("Game over!")
//
//func greet(person: [String: String]) {
//    guard let name = person["name"] else {
//        return
//    }
//
//    print("Hello \(name)!")
//
//    guard let location = person["location"] else {
//        print("I hope the weather is nice near you.")
//        return
//    }
//
//    print("I hope the weather is nice in \(location).")
//}
//
//greet(person: ["name": "John"])
//// Prints "Hello John!"
//// Prints "I hope the weather is nice near you."
//greet(person: ["name": "Jane", "location": "Cupertino"])
//// Prints "Hello Jane!"
//// Prints "I hope the weather is nice in Cupertino."
//
//if #available(iOS 10, macOS 10.12, *) {
//    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
//} else {
//    // Fall back to earlier iOS and macOS APIs
//}
//
//func greeting(_ name:String = "Kevin") -> String {
//    "Hello, \(name)"
//}
//
////print(greeting("Kevin"))
//print(greeting())
//
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var a = 10
//var b = 20
//print("\(a) \(b)")
//swapTwoInts(&a, &b)
//print("\(a) \(b)")
//
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepForward(input: Int) -> Int { return input + 1 }
//    func stepBackward(input: Int) -> Int { return input - 1 }
//    return backward ? stepBackward : stepForward
//}
//
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
////names.sorted(by: { (a: String, b: String) -> Bool in
////    a < b
////})
//
////print(names.sorted(by: { $0 < $1 }))
//print(names.sorted(by: <))
//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [16, 58, 510]
//
//let strings = numbers.map { (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[number % 10]! + output
//        number /= 10
//    } while number > 0
//    return output
//}
//
//print(strings)
//
//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTen = makeIncrementer(forIncrement: 10)
//
//incrementByTen()
//// returns a value of 10
//incrementByTen()
//// returns a value of 20
//incrementByTen()
//// returns a value of 30
//
//var completionHandlers: [() -> Void] = []
//func someFunctionWithEscapingClosure(completionHandler: @autoclosure @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}
//
//func someFunctionWithNonescapingClosure(closure: () -> Void) {
//    closure()
//}
//
//class SomeClass {
//    var x = 10
//    func doSomething() {
//        someFunctionWithEscapingClosure(completionHandler: self.x = 100)
//        someFunctionWithNonescapingClosure { x = 200 }
//    }
//}
//
//let instance = SomeClass()
//instance.doSomething()
//print(instance.x)
//// Prints "200"
//
//completionHandlers.first?()
//print(instance.x)
//// Prints "100"
//
//var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//// customersInLine is ["Ewa", "Barry", "Daniella"]
//func serve(customer customerProvider: @autoclosure @escaping () -> String) {
//    print("Now serving \(customerProvider())!")
//}
//serve(customer: customersInLine.remove(at: 0))
//// Prints "Now serving Ewa!"
//
//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
//enum Planet {
//    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
//}
//
//var directionToHead : CompassPoint = .south
//switch directionToHead {
//case .north:
//    print("Lots of planets have a north")
//case .south:
//    print("Watch out for penguins")
//case .east: //kalo ini di hilangin error, karena tidak ada default case
//    print("Where the sun rises")
//case .west:
//    print("Where the skies are blue")
////default:
////    print("nothing")
//}
//// Prints "Watch out for penguins"
//
//
//enum Beverage: CaseIterable {
//    case coffee, tea, juice
//}
//let numberOfChoices = Beverage.allCases.count
//print("\(numberOfChoices) beverages available")
//// Prints "3 beverages available"
//
//enum ArithmeticExpression {
//    case number(Int)
//    indirect case addition(ArithmeticExpression, ArithmeticExpression)
//    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
//}
//
//let five = ArithmeticExpression.number(5)
//let four = ArithmeticExpression.number(4)
//let sum = ArithmeticExpression.addition(five, four)
//let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
//
//func evaluate(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case let .number(value):
//        return value
//    case let .addition(left, right):
//        return evaluate(left) + evaluate(right)
//    case let .multiplication(left, right):
//        return evaluate(left) * evaluate(right)
//    }
//}
//
//print(evaluate(product))
//
//struct Resolution {
//    var width = 0
//    var height = 0
//
//    mutating func test() {
//        width = 100
//        height = 100
//    }
//}
//
//print(Resolution(width: 0, height: 10))
//
//var res = Resolution()
//res.width = 100
//res.test()
//
////struct dan enum itu sama2 value-types, sehingga ketika di store value ke variabel lain, malah kecopy
//enum CompassPoint2 {
//    case north, south, east, west
//    mutating func turnNorth() {
//        self = .north
//    }
//}
//var currentDirection = CompassPoint2.west
//let rememberedDirection = currentDirection
//currentDirection.turnNorth()
//
//print("The current direction is \(currentDirection)")
//print("The remembered direction is \(rememberedDirection)")
//// Prints "The current direction is north"
//// Prints "The remembered direction is west"
//
////LAZY
//class DataImporter {
//    /*
//    DataImporter is a class to import data from an external file.
//    The class is assumed to take a nontrivial amount of time to initialize.
//    */
//    var filename = "data.txt"
//    // the DataImporter class would provide data importing functionality here
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data: [String] = []
//    // the DataManager class would provide data management functionality here
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//// the DataImporter instance for the importer property hasn't yet been created
//
//print(manager.importer.filename)
//// karena importer lazy, dia bakal kepanggil ketika pertama kali di access properti nya
//// the DataImporter instance for the importer property has now been created
//// Prints "data.txt"
//
//struct Person {
//    var age = 16
//
//    lazy var fibonacciOfAge: Int = fibonacci(of: self.age)
//
//    func fibonacci(of num: Int) -> Int {
//        if num < 2 {
//            return num
//        } else {
//            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
//        }
//    }
//}
//
//var testP = Person()
//print(testP)
//print(testP.fibonacciOfAge)
//print(testP)
//
//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) { //before set
//            print("About to set totalSteps to \(newTotalSteps)")
//        }
//        didSet { //after set
//            if totalSteps > oldValue  {
//                print("Added \(totalSteps - oldValue) steps")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//// About to set totalSteps to 200
//// Added 200 steps
//stepCounter.totalSteps = 360
//// About to set totalSteps to 360
//// Added 160 steps
//stepCounter.totalSteps = 896
//// About to set totalSteps to 896
//// Added 536 steps
//
//@propertyWrapper //thread safety
//struct TwelveOrLess {
//    private var number = 0
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, 12) }
//    }
//}
//
//struct SmallRectangle {
//    @TwelveOrLess var height: Int
//    @TwelveOrLess var width: Int
//}
//
//var rectangle = SmallRectangle()
//print(rectangle.height)
//// Prints "0"
//
//rectangle.height = 10
//print(rectangle.height)
//// Prints "10"
//
//rectangle.height = 24
//print(rectangle.height)
//// Prints "12"
//
//struct SmallRectangle2 { // ini kalo full case, kalo shortcase yang SmallRectangle
//    private var _height = TwelveOrLess()
//    private var _width = TwelveOrLess()
//    var height: Int {
//        get { return _height.wrappedValue }
//        set { _height.wrappedValue = newValue }
//    }
//    var width: Int {
//        get { return _width.wrappedValue }
//        set { _width.wrappedValue = newValue }
//    }
//}
//
//@propertyWrapper
//struct SmallNumber {
//    private var maximum: Int
//    private var number: Int
//
//    var wrappedValue: Int {
//        get { return number }
//        set { number = min(newValue, maximum) }
//    }
//
//    init() {
//        maximum = 12
//        number = 0
//    }
//    init(wrappedValue: Int) {
//        maximum = 12
//        number = min(wrappedValue, maximum)
//    }
//    init(wrappedValue: Int, maximum: Int) {
//        self.maximum = maximum
//        number = min(wrappedValue, maximum)
//    }
//}
//
//struct ZeroRectangle {
//    @SmallNumber var height: Int
//    @SmallNumber var width: Int
//}
//
//var zeroRectangle = ZeroRectangle()
//print(zeroRectangle.height, zeroRectangle.width)
//// Prints "0 0"
//
//@propertyWrapper
//struct SmallNumber2 {
//    private var number = 0
//    var projectedValue = false
//    var wrappedValue: Int {
//        get { return number }
//        set {
//            if newValue > 12 {
//                number = 12
//                projectedValue = true
//            } else {
//                number = newValue
//                projectedValue = false
//            }
//        }
//    }
//    init() {
//        number = 0
//    }
//}
//struct SomeStructure {
//    @SmallNumber2 var someNumber: Int
//}
//var someStructure = SomeStructure()
//
//someStructure.someNumber = 4
//print(someStructure.$someNumber)
//// Prints "false"
//
//someStructure.someNumber = 55
//print(someStructure.$someNumber)
//print(someStructure.someNumber)
//// Prints "true"
//
//func runAnim(anim: Int) {
//
//}
//
//class SomeClass2 {
//    static var storedTypeProperty = "Some value."
//    static var computedTypeProperty: Int {
//        return 27
//    }
//    class var overrideableComputedTypeProperty: Int {
//        return 107
//    }
//}
//
//print(SomeClass2.overrideableComputedTypeProperty)
//
//class SomeClass3 : SomeClass2 {
//    override class var overrideableComputedTypeProperty: Int {
//        return 50
//    }
//}
//
//struct AudioChannel {
//    static let thresholdLevel = 10
//    static var maxInputLevelForAllChannels = 0
//    var currentLevel: Int = 0 {
//        didSet {
//            if currentLevel > AudioChannel.thresholdLevel {
//                // cap the new audio level to the threshold level
//                currentLevel = AudioChannel.thresholdLevel
//            }
//            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
//                // store this as the new overall maximum input level
//                AudioChannel.maxInputLevelForAllChannels = currentLevel
//            }
//        }
//    }
//}
//
//enum LogLevel: String {
//    case trace, debug, info, warn, error, fatal
//}
//
//import CoreData
//
//func log(_ message: String, level: LogLevel = .info) -> String {
//    let logLine = "[\(level)] \(Date()): \(message)"
//    print(logLine)
//    return logLine
//}
//
//log("Hello, world!")
//
//struct Matrix {
//    let rows: Int, columns: Int
//    var grid: [Double]
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//        grid = Array(repeating: 0.0, count: rows * columns)
//    }
//    func indexIsValid(row: Int, column: Int) -> Bool {
//        return row >= 0 && row < rows && column >= 0 && column < columns
//    }
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            return grid[(row * columns) + column]
//        }
//        set {
//            assert(indexIsValid(row: row, column: column), "Index out of range")
//            grid[(row * columns) + column] = newValue
//        }
//    }
//}
//
//var matrix = Matrix(rows: 2, columns: 2)
//
////let someValue = matrix[2, 2]
//// This triggers an assert, because [2, 2] is outside of the matrix bounds.
//
//enum Planet2: Int {
//    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
//    static subscript(n: Int) -> Planet2 {
//        return Planet2(rawValue: n)!
//    }
//}
//let mars = Planet2[4]
//let mercury = Planet2[1]
//print(mars)
//
//class TestTest {
//    var name:String
//
//    init(name:String) {
//        self.name = name
//    }
//
//    convenience init() {
//        self.init(name: "[Unnamed]")
//    }
//}
//
//class TestTest2 : TestTest {
//
//}
//
//let asdasddsa = TestTest2()
////print(asdasddsa.name)
//
//struct Animal {
//    let species: String
//    init?(species: String) {
//        if species.isEmpty { return nil }
//        self.species = species
//    }
//}
//
//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var rooms: [Room] = []
//    var numberOfRooms: Int {
//        return rooms.count
//    }
//    subscript(i: Int) -> Room {
//        get {
//            return rooms[i]
//        }
//        set {
//            rooms[i] = newValue
//        }
//    }
//    func printNumberOfRooms() {
//        print("The number of rooms is \(numberOfRooms)")
//    }
//    var address: Address?
//}
//
//class Room {
//    let name: String
//    init(name: String) { self.name = name }
//}
//
//class Address {
//    var buildingName: String?
//    var buildingNumber: String?
//    var street: String?
//    func buildingIdentifier() -> String? {
//        if let buildingNumber = buildingNumber, let street = street {
//            return "\(buildingNumber) \(street)"
//        } else if buildingName != nil {
//            return buildingName
//        } else {
//            return nil
//        }
//    }
//}
//
//let john = Person()
//if let roomCount = john.residence?.numberOfRooms {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}
// Prints "Unable to retrieve the number of rooms."

//func createAddress() -> Address {
//    print("Function was called.")
//
//    let someAddress = Address()
//    someAddress.buildingNumber = "29"
//    someAddress.street = "Acacia Road"
//
//    return someAddress
//}
//john.residence?.address = createAddress()
//
//let hexadecimalDouble = 0xC.4p5

//precondition(false, "Index must be greater than zero.") //buat cek error di debug mode
//precondition(false, "Index must be greater than zero.") //buat cek error di release mode

//typealias Money = Double
//
//var money : Money = 1_000_000_000.125
//
//enum dataError : Error {
//    case error1
//    case error2
//    case error3
//}
//
//func dataErrorFunc(_ err:Int) throws -> Int {
//    switch err {
//        case 0:
//            throw dataError.error1
//        case 1:
//            throw dataError.error2
//        case 2:
//            throw dataError.error3
//        default:
//            print("not error")
//    }
//
//    return 0
//}
//
//do {
//    try! dataErrorFunc(5)
//}
//
//for i in 1...10 {
//    print ("In \(i)")
//    defer { print ("Deferred \(i)") }
//    print ("Out \(i)")
//}

//#if swift(>=5.5)
//print("Running Swift 5.5 or later")
//#else
//print("Running old Swift")
//#endif

//func listPhotos(inGallery name: String) async -> [String] {
//    print("RESULT PRINTED")
//    return ""
//}
//
//let photoNames = await listPhotos(inGallery: "Summer Vacation")
//let sortedNames = photoNames.sorted()
//let name = sortedNames[0]
//let photo = await downloadPhoto(named: name)
//show(photo)

////CONCURRENCY
//import UIKit
//
////DISPATCH GROUP
//func getData() {
//    let urls = [
//        "https://api.google.com/1",
//        "https://api.google.com/2",
//        "https://api.google.com/3"
//    ]
//
//    let group = DispatchGroup()
//
//    for url in urls {
//
//        guard let url = URL(string: url) else {
//            continue
//        }
//
//        group.enter()
//        print(url)
//        let task = URLSession.shared.dataTask(with: url){ (data, res, err) in
//            defer {
//                group.leave()
//            }
//
//            guard let data = data else {
//                return
//            }
//            print(data)
//        }
//        task.resume()
//    }
//
//    group.notify(queue: .main, execute: {
//        //UPDATE UI
//    })
//}
//
//import Foundation
//
//@objc protocol CounterDataSource {
//    @objc optional func increment(forCount count: Int) -> Int
//    @objc optional var fixedIncrement: Int { get }
//}
//
//class Counter {
//    var count = 0
//    var dataSource: CounterDataSource?
//    func increment() {
//        if let amount = dataSource?.increment?(forCount: count) {
//            count += amount
//        } else if let amount = dataSource?.fixedIncrement {
//            count += amount
//        }
//    }
//}
//
//class ThreeSource: CounterDataSource {
//    let fixedIncrement = 3
//}
//
//var counter = Counter()
//counter.dataSource = ThreeSource()
//for _ in 1...4 {
//    counter.increment()
//    print(counter.count)
//}

//func swapVal<T>(a: inout T, b: inout T) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//var c = "as"
//var d = "qw"
//
//protocol Container {
//    associatedtype Item
//    mutating func append(_ item: Item)
//    var count: Int { get }
//    subscript(i: Int) -> Item { get }
//
//    associatedtype Iterator: IteratorProtocol where Iterator.Element == Item
//    func makeIterator() -> Iterator
//}

//protocol Shape {
//    func draw() -> String
//}
//
//struct Triangle: Shape {
//    var size: Int
//    func draw() -> String {
//        var result: [String] = []
//        for length in 1...size {
//            result.append(String(repeating: "*", count: length))
//        }
//        return result.joined(separator: "\n")
//    }
//}
//let smallTriangle = Triangle(size: 3)
//print(smallTriangle.draw())
//// *
//// **
//// ***
//
//struct FlippedShape<T: Shape>: Shape {
//    var shape: T
//    func draw() -> String {
//        let lines = shape.draw().split(separator: "\n")
//        return lines.reversed().joined(separator: "\n")
//    }
//}
//let flippedTriangle = FlippedShape(shape: smallTriangle)
//print(flippedTriangle.draw())
//// ***
//// **
//// *
//
//
//struct JoinedShape<T: Shape, U: Shape>: Shape {
//    var top: T
//    var bottom: U
//    func draw() -> String {
//        return top.draw() + "\n" + bottom.draw()
//    }
//}
//let joinedTriangles = JoinedShape(top: smallTriangle, bottom: flippedTriangle)
//print(joinedTriangles.draw())
//// *
//// **
//// ***
//// ***
//// **
//// *
//
//struct Square: Shape {
//    var size: Int
//    func draw() -> String {
//        let line = String(repeating: "*", count: size)
//        let result = Array<String>(repeating: line, count: size)
//        return result.joined(separator: "\n")
//    }
//}
//
//func makeTrapezoid() -> some Shape {
//    let top = Triangle(size: 2)
//    let middle = Square(size: 2)
//    let bottom = FlippedShape(shape: top)
//    let trapezoid = JoinedShape(
//        top: top,
//        bottom: JoinedShape(top: middle, bottom: bottom)
//    )
//    return trapezoid
//}
//let trapezoid = makeTrapezoid()
//print(trapezoid.draw())
//// *
//// **
//// **
//// **
//// **
//// *
//
//protocol Fighter : Equatable {
////    associatedtype Item
//}
//struct XWing: Fighter {
////    typealias Item = Fighter
//}
//
//func launchFighter() -> some Fighter {
//    XWing()
//}
//
//let red5 = launchFighter()
//print(red5 == red5)
//
//
//
//protocol ImperialFighter {
//    init()
//}
//
//struct TIEFighter: ImperialFighter { }
//struct TIEAdvanced: ImperialFighter { }
//
//func launchImperialFighter<T: ImperialFighter>() -> T {
//    T()
//}
//
//func makeInt() -> some Equatable {
//    Int.random(in: 1...10)
//}
//
//struct Movie : Codable {
//    let title : String
//}
//
//struct User : Codable {
//    let name : String
//}
//
//import UIKit
//
//protocol WebServiceProtocol : AnyObject {
//    associatedtype T
//    func getAllMovies(url: URL, completion: (Result<[T], Error>) -> Void)
//}

//protocol Container {
//    associatedtype Item
//    var count: Int { get }
//    subscript(i: Int) -> Item { get }
//}
//extension Array: Container { }
//
//func makeOpaqueContainer<T>(item: T) -> some Container {
//    return [item]
//}
//let opaqueContainer = makeOpaqueContainer(item: 12)
//let twelve = opaqueContainer[0]
//print(type(of: twelve))
// Prints "Int"

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil
