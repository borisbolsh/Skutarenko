import UIKit

// Lesson 3. Tuples

//Task 1

var myFitResults = (pushUps: 20, tightening: 18, squats: 50)

print("""
Task 1

My fitness results:
push ups: \(myFitResults.pushUps)
tightening: \(myFitResults.tightening)
squats: \(myFitResults.squats)
""")

print("\n------------------------------------------------\n")



//Task 2

var myWifeFitResults = (pushUps: 15, tightening: 10, squats: 30)

print("""
Task 2

My wife fitness results:
push ups: \(myWifeFitResults.0)
tightening: \(myWifeFitResults.1)
squats: \(myWifeFitResults.2)
""")

print("\n------------------------------------------------\n")



//Task 3

let changeFitResults = myWifeFitResults
myWifeFitResults = myFitResults
myFitResults = changeFitResults

print("""
Task 3

My fitness results (changed)
push ups: \(myFitResults.pushUps)
tightening: \(myFitResults.tightening)
squats: \(myFitResults.squats)
""")

print("""

My wife fitness results  (changed)
push ups: \(myWifeFitResults.0)
tightening: \(myWifeFitResults.1)
squats: \(myWifeFitResults.2)
""")

print("\n------------------------------------------------\n")



//Task 4

let differences = (myFitResults.pushUps - myWifeFitResults.pushUps,
                   myFitResults.tightening - myWifeFitResults.tightening,
                   myFitResults.squats - myWifeFitResults.squats)

print("""

The differences are very subtle
push ups: \(differences.0)
tightening: \(differences.1)
squats: \(differences.2)
""")
