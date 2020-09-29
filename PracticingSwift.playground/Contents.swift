import Foundation

protocol MastersInComputerScience {
    //Declare a function signature called "makeComplexSoftwareDecisions" that takes in an argument called "factors" whose type is an array of strings, and whose return value is a string.
}

class Programmer {
    func writeSomeCodeFor(task: String) -> Bool {
        if task.contains("impossible") {
            return false
        }
        
        return true
    }
}

class YourName: Programmer {
    //change YourName to your name in capital camel case, so this class represents you!
}

//This is you
let you = YourName()

//You can already write some code!
you.writeSomeCodeFor(task: "Make a nice app")

//Though not necessarily everything :)
you.writeSomeCodeFor(task: "something impossible")

//How do lines 26 and 29 work?

//Soon you will have a Master's degree in computer science. Make the YourName class implement the MastersInComputerScience protocol. What error do you get?

//Implement the method "makeComplexSoftwareDecisions" for yourself. What kinds of factors do you consider when deciding how to write some code? 
