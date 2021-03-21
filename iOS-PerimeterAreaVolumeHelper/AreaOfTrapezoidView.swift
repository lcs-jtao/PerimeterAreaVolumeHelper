//
//  AreaOfTrapezoidView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-21.
//

import SwiftUI

struct AreaOfTrapezoidView: View {
    //MARK: Stored properties
    @State private var givenTop = "0"
    @State private var givenBase = "0"
    @State private var givenHeight = "0"
    
    //MARK: Computer properties
    
    private var actualTop: Double{
        
        return Double(givenTop) ?? 0
    }
    
    private var actualBase: Double{
        
        return Double(givenBase) ?? 0
    }
    
    private var actualHeight: Double{
        
        return Double(givenHeight) ?? 0
    }
    
    private var area: Double{
        return areaOfTrapezoid(a: actualTop, b: actualBase, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            //INPUT
            Text("Enter the top of the trapezoid")
                .bold()
            TextField("Top", text :$givenTop)
            
            Text("Enter the base of the trapezoid")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height of the trapezoid")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The area of the trapezoid is \(area)")
        }
        .navigationTitle("Trapezoid Area Helper")
    }
}

struct AreaOfTrapezoidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaOfTrapezoidView()
        }
    }
}
