//
//  ContentView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-18.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    @State private var givenWidth = "0"
    @State private var givenLength = "0"
    
    //MARK: Computer properties
    
    //Return the width as a number
    //NOTE: This assumes the user will always provide correct input
    //We must update this later to deal with bad input
    private var actualWidth: Double{
        
        //?? 0 is a "nil coalescing operator"
        //Function: When the conversion to a Double doesn't work, provide a defult value instead - in this case, 0
        return Double(givenWidth) ?? 0
    }
    
    //Return the length as a number
    private var actualLength: Double{
        return Double(givenLength) ?? 0
    }
    
    //Return the area of the rectangle
    private var area: Double{
        return areaOfRectangle(l: actualLength, w: actualWidth)
    }
    
    var body: some View {
        
        Form {
            
            //INPUT
            Text("Enter the width of the rectangle")
                .bold()
            TextField("Width", text :$givenWidth)
            
            Text("Enter the length of the rectangle")
                .bold()
            TextField("Length", text :$givenLength)
            
            //OUTPUT
            Text("The area of the rectangle is \(area)")
        }
        .navigationTitle("Area Helper")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
