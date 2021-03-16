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
    
    //loop forever (until the program is quit)
    while true{
        //Display initial menu
        showMenu()
        
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
            collectParallelogramAreaInputAndShowOutput()
        case "3":
            print("Triangle chosen")
            collectTriangleAreaInputAndShowOutput()
        case "4":
            print("Trapezoid chosen")
            collectTrapezoidAreaInputAndShowOutput()
        case "5":
            print("Circle chosen")
            collectCircleAreaInputAndShowOutput()
        case "Q":
            print("Quit program")
            exit(0) //Quit
        default:
            print("Please make a valid selection.")
        }
    }
}

//Calculate the area of the rectangle (input two pieces of info and output one piece of info)
func areaOfRectangle(l: Double, w: Double) -> Double{
    return l * w
}
//Calculate the area of the parallelogram
func areaOfParallelogram(b: Double, h: Double) -> Double{
    return b * h
}
//Calculate the area of the triangle
func areaOfTriangle(b: Double, h: Double) -> Double{
    return b * h / 2
}
//Calculate the area of the trapezoid
func areaOfTrapezoid(a: Double, b: Double, h: Double) -> Double{
    return (a + b) * h / 2
}
//Calculate the area of the circle
func areaOfCircle(r: Double) -> Double{
    return 3.14 * r * r
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
    let result = areaOfRectangle(l: length, w: width)
    
    //Print the area
    print("The area of the rectangle is \(result) square units")
    
    //Pause
    pauseAndContinueAfterEnter()
}

//Get the input to calculate a parallelogram's area
func collectParallelogramAreaInputAndShowOutput(){
    
    //Show prompt and collect first input
    print("")
    print("Please enter the base (b): ")
    //Get base as a String but convert to a Double
    let base = Double(readLine()!)!
    
    //Show prompt and collect height input
    print("")
    print("Please enter the height (h): ")
    //Get height as a String but convert to a Double
    let height = Double(readLine()!)!
    
    //Calculate the area
    let result = areaOfParallelogram(b: base, h: height)
    
    //Print the area
    print("The area of the parallelogram is \(result) square units")
    
    //Pause
    pauseAndContinueAfterEnter()
}

//Get the input to calculate a triangle's area
func collectTriangleAreaInputAndShowOutput(){
    
    //Show prompt and collect first input
    print("")
    print("Please enter the base (b): ")
    //Get base as a String but convert to a Double
    let base = Double(readLine()!)!
    
    //Show prompt and collect height input
    print("")
    print("Please enter the height (h): ")
    //Get height as a String but convert to a Double
    let height = Double(readLine()!)!
    
    //Calculate the area
    let result = areaOfTriangle(b: base, h: height)
    
    //Print the area
    print("The area of the triangle is \(result) square units")
    
    //Pause
    pauseAndContinueAfterEnter()
}

//Get the input to calculate a trapezoid's area
func collectTrapezoidAreaInputAndShowOutput(){
    
    //Show prompt and collect first input
    print("")
    print("Please enter the length of the top (a): ")
    //Get top as a String but convert to a Double
    let top = Double(readLine()!)!
    
    //Show prompt and collect bottom input
    print("")
    print("Please enter the length of the bottom (b): ")
    //Get bottom as a String but convert to a Double
    let bottom = Double(readLine()!)!
    
    //Show prompt and collect height input
    print("")
    print("Please enter the height (h): ")
    //Get height as a String but convert to a Double
    let height = Double(readLine()!)!
    
    //Calculate the area
    let result = areaOfTrapezoid(a: top, b: bottom, h: height)
    
    //Print the area
    print("The area of the rectangle is \(result) square units")
    
    //Pause
    pauseAndContinueAfterEnter()
}

//Get the input to calculate a circle's area
func collectCircleAreaInputAndShowOutput(){
    
    //Show prompt and collect first input
    print("")
    print("Please enter the radius (r): ")
    //Get radius as a String but convert to a Double
    let radius = Double(readLine()!)!
    
    //Calculate the area
    let result = areaOfCircle(r: radius)
    
    //Print the area
    print("The area of the circle is \(result) square units")
    
    //Pause
    pauseAndContinueAfterEnter()
}

//Pause and let the user see some output
func pauseAndContinueAfterEnter(){
    
    //Pause
    print("")
    print("Press RETURN to continue...")
    _ = readLine()
    print("")
}

//MARK: Input

//Collect the user's selection
collectMenuChoice()
