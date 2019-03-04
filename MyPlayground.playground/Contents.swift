import UIKit

var str1 = "Hello World"
var bol3an = true
bol3an = !bol3an
print(bol3an)
var feelGood = true
feelGood  = bol3an ? true : false

var balance = 100
var message = balance >= 150 ? "Thanks for shopping" : "Niklo xD"
var name = "Ahmad chauhan"
var ins = "imtiaz chauhan"
var totalName = name + " " + ins
totalName.append(" xD")

message = message.capitalized
var chatMsg = "Abusing and bla bla "
if chatMsg.contains("Abusing"){
    chatMsg.replacingOccurrences(of: "Abusing", with:"No abusing")
}


var salaries = [100.0, 2500.0, 2500.0, 4500.0,100.0, 2500.0, 2500.0, 4500.0,100.0, 2500.0, 2500.0, 4500.0,100.0]
var x = 0
repeat {
    salaries[x] = salaries[x] + (salaries[x] * 0.10)
    print(salaries[x])
    x += 1
}while (x < salaries.count)



for i in 0..<salaries.count{
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    print(salaries[i])
    
}
for i in 1...5{
    print("index \(i)" )
}
for i in 1..<6{
    print("index \(i)")
}



for salary in salaries{
    print("Salary \(salary)")
    
}

var nameOfIntegers = [Int: String]()
nameOfIntegers[55] = "Fifty five"

var airports: [String : String] = ["LHE":"Lahore", "KWI":"Kuwait"]
airports["KHI"] = "Karachi"
print(airports.count)
airports["KHI"] = nil
print(airports.count)


for (code , name) in airports{
    print(code + " " + name)
}

for code in airports.keys{
    print("Keys : \(code) ")
}
for names in airports.values{
    print("Names  : \(names) ")
}


class user {
    var username = ""
    var userid = 25
    var bloodGroup = "B+"
    
    func addition() -> Int {
        let f1 = 125
        let f2 = 35
        let f3 = f1 + f2
        return f3
        
    }
}

let employee = user()
employee.username = "Ahmad"
print(employee.username)
employee.addition()


class Area {

     var area : Double?
    
    func calcArea(valA: Double, valB: Double) {
        
    }
}
class triangle: Area {
    override func calcArea(valA: Double, valB: Double) {
        area = (valA * valB)/2
        
    }
}
class Sqaure: Area {
    override func calcArea(valA: Double, valB: Double) {
        area = (valA * valB)
        
    }
}

//optionals


var optionalnumber : Double?

//Force unWrapping

var optNumber : Int? = 5 //if nmber is null and we didn't apply condition this will give error -> var optNumber : Int? = nil
var number : Int = 5

if optNumber != nil {
    print("optional number has value of \(optNumber!)") // this is impossible to force unwrapping a nil value
}else{
    print("number is nill")
}

// Optional Binding

if let constantNumber = optNumber {

    print("Constant number has a value of \(constantNumber)")
}else{
    print("Optional number is nill")
}

//optional binding with function

func intPrinter (){
    guard let constantNumber = optNumber else {return}
    print("Constant number has a \(constantNumber)")
}
intPrinter()


//Implicitly unwrapping

let assumedValue: Int! = 5
let implicitValue : Int = assumedValue


let optionaInt: Int? = nil
let result = optionaInt ?? 0 //if we don't get value from server set optionalint set to 0
// if the number is 5 then the number will assign to result variable


////////////////////////////////
//optional chaining

class comiconAttende{
    
    var admissionBadge: AdmissionBadge?
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}
class AdmissionBadge {
    var numberOfDays: Int
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}
let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = comiconAttende(badge: admissionBadge)

if let daysLeft = attendee.admissionBadge?.numberOfDays{
    print("this attendee can enter the comicon for \(daysLeft) days")
}else{
    print("Please purchase the ticket")
}
