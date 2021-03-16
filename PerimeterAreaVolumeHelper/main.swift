//
//  main.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-16.
//

import Foundation

//MARK: Functions
func showMenu(){
    print("Area Formulas")
    print("-------------")
    print("")
    print("1 - Rectangle")
    print("2 - Parallelogram")
    print("3 - Triangle")
    print("4 - Trapezoid")
    print("5 - Circle")
    print("Q - QUIT PROGRAM")
    print("")
    print("Please select a shape (1/2/3/4/5/Q): ")
}

func collectMenuChoice(){
    
    //Wait for the input
    //readLine pauses and waits for the user to provide input,
    //the value is placed into "selection" as a String
    let selection = readLine()!
    
    //Make a decision based on the selection (similar to if statement)
    switch selection {
    case "1":
        print("Rectangle chosen")
        collectRectangleAreaInputAndShowOutput()
    case "2":
        print("Parallelogram chosen")
    case "3":
        print("Triangle chosen")
    case "4":
        print("Trapezoid chosen")
    case "5":
        print("Circle chosen")
    case "Q":
        print("Quit program")
    default:
        print("Please make a valid selection.")
    }
}

//Calculate the area of the rectangle (input two pieces of info and output one piece of info)
func areaOfRectangleWidth(l: Double, w: Double) -> Double{
    return l * w
}

//Get the input to calculate a rectangle's area
func collectRectangleAreaInputAndShowOutput(){
    
    //Show prompt and collect first input
    print("")
    print("Please enter the length (l): ")
    //Get length as a String but convert to a Double
    let length = Double(readLine()!)!
    
    //Show prompt and collect width input
    print("")
    print("Please enter the width (w): ")
    //Get width as a String but convert to a Double
    let width = Double(readLine()!)!
    
    //Calculate the area
    let result = areaOfRectangleWidth(l: length, w: width)
    
    //Print the area
    print("The area of the rectangle is \(result) square units")
}

//MARK: Input

//Display initial menu
showMenu()

//Collect the user's selection
collectMenuChoice()
