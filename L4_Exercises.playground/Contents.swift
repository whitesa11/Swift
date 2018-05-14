//: # Lesson 4 Exercises - Control Flow

import UIKit

//: ## Fast enumeration with for-in
//: ### Exercise 1
//: For each title in the array print the following string: "title + with Puppets", e.g "Point Break with Puppets!"
var movieTitleArray = ["Point Break", "The Dark Knight", "Star Wars", "When Harry Met Sally"]
print(" \(movieTitleArray) with Puppets")

//: ### Exercise 2
//: Rent is increasing by 20% this year. Use a for-in loop to apply this increase to each item in the oldMountainViewRent array.  Store the new values in the array newMountainViewRent.
var oldMountainViewRent:[Double] = [2150, 1775, 2221, 1261, 1325, 2110, 1870]
var newMountainViewRent = [Double]()
for newRent in oldMountainViewRent
{
    newMountainViewRent.append(newRent * 1.02)
}

//: ### Exercise 3
//: For each food with a true value, print out "<food>, yum!" For each food with a false value print out, "<food>, yuck!"
var polarizingFoods = ["Anchovies":true, "Coconut":true, "Cilantro":true, "Liver": false]
for (food, taste) in polarizingFoods
{
    if(taste == true){
        print("\(food) ,yum!")
    }else{
        print("\(food) ,yuck!")
    }
}

//: ### Exercise 4
//: The Oakland area code is changing from 415 to 510. Replace all occurrences of the area code 415 with 510 in the dictionary below.
var rapperPhoneNumbers = ["Azealia Banks":"(212)548-8777", "Boots Riley":"(415)755-9887", "MC Hammer":"(415)533-9899", "Missy Elliot":"(757)488-5552", "Shock G":"(415)499-7676", "Sir Mix-a-lot":"(206)123-4567", "Snoop Dogg":"(213)760-6664"]
for (num) in rapperPhoneNumbers.values {
        num.replacingOccurrences(of: "415", with: "510")
}


//: ## Switch Statements
//: Translate the following if-else statements into switch statements. Feel free to modify print statements as desired.
//: ### Exercise 5
//: Below is an if statement determining what team to cheer for given a sport.
enum Sport {
    case baseball, basketball, football, hockey, soccer
}

let sport = Sport.baseball

switch sport{
case Sport.baseball:
    print("Go A's!")
case Sport.basketball:
    print("Go Warriors!")
case Sport.football:
    print("Go Raiders!")
case Sport.hockey:
    print("Go Sharks!")
case Sport.soccer:
    print("Go Earthquakes!")
default:
    print("Go A's!")
}

//: ### Exercise 6
//: Below is an enum and an if-else statement for implementing the game Rock-Paper-Scissors.
enum roshamboMove {
    case rock, paper, scissors
}

var myMove = roshamboMove.scissors
var yourMove = roshamboMove.scissors

var resultsMessage = ""
//
//if myMove == .rock && yourMove == .paper || myMove == .paper && yourMove == .rock {
//    resultsMessage = "Paper covers Rock."
//} else if myMove == yourMove {
//    resultsMessage = "It's a tie!"
//} else if myMove == .rock && yourMove == .scissors || myMove == .scissors && yourMove == .rock {
//    resultsMessage = "Rock crushes Scissors. "
//} else if myMove == .paper && yourMove == .scissors || myMove == .scissors && yourMove == .paper {
//    resultsMessage = "Scissors cut Paper."
//}


//: ### Exercise 7
//: Below is an if-else statement matching an assignment score to a letter grade.
var score = 97
var letterGrade = ""

switch score{
case 90...100:
    letterGrade = "A"
case 80...89:
    letterGrade = "B"
case 70...79:
    letterGrade = "C"
case 60...69:
    letterGrade = "D"
default:
    letterGrade = "A"
}

//if 90...100 ~= score {
//    letterGrade = "A"
//} else if 80...89 ~= score {
//    letterGrade = "B"
//} else if 70...79 ~= score {
//    letterGrade = "C"
//} else if 60...69 ~= score {
//    letterGrade = "D"
//} else {
//    letterGrade = "Incomplete"
//}

//: ### Exercise 8
//: The if-else statement below translates a word into Pig Latin. Without using the "vowels" array, write an equivalent switch statement.

var word = "can"
var firstLetter = word[word.startIndex]
var newWord = ""
var vowels: [Character] = ["a", "e", "i", "o", "u"]

if vowels.contains(firstLetter) {
    newWord = word + "yay"
} else {
    word.remove(at: word.startIndex)
    newWord = "\(word)\(firstLetter)ay"
}
