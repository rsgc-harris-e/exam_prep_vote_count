import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputToProcess : Int = 0
var votesA = 0
var votesB = 0

// Loop until valid input is received
while inputToProcess == 0 {
    
    // Show the prompt
    print("How many votes? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputint = Int(notNilInput){
            if inputint >= 1 && inputint <= 15{
                    inputToProcess = inputint
            }
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for no
        
    }
    
}

var inputstrproc : String = ""

// Loop until valid input is received
while inputstrproc == "" {
    
    // Show the prompt
    print("", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputstring = String(notNilInput){
            if inputstring.contains("A"){
                inputstrproc = inputstring
            }

        }
        
    }
    
}

if inputstrproc.characters.count != inputToProcess{
    print("Error")
}

for letter in inputstrproc.characters{
    if letter == "A"{
        votesA+=1
}else if letter == "B"{
votesB+=1
}
}
if votesA > votesB{
    print("A")
}else if votesB > votesA{
    print("B")
}else{
    print("Tie")
}
