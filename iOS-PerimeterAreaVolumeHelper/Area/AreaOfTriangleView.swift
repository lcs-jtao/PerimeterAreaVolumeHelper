//
//  AreaOfTriangleView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-19.
//

import SwiftUI

struct AreaOfTriangleView: View {
    
    //MARK: Stored properties
    @State private var givenBase = "0"
    @State private var givenHeight = "0"
    
    //MARK: Computer properties
    
    private var actualBase: Double{
        
        return Double(givenBase) ?? 0
    }
    
    private var actualHeight: Double{
        
        return Double(givenHeight) ?? 0
    }
    
    private var area: Double{
        return areaOfTriangle(b: actualBase, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("triangle")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the base (b) of the triangle")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height (h) of the triangle")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The area of the triangle is \(String(format: "%.3f", area))")
            
            Button("Clear input") {
                givenBase = "0"
                givenHeight = "0"
            }
        }
        .navigationTitle("Triangle Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AreaOfTriangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaOfTriangleView()
        }
    }
}
