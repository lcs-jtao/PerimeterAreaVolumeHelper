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
            
            //INPUT
            Text("Enter the base of the triangle")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height of the triangle")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The area of the triangle is \(area)")
        }
        .navigationTitle("Triangle Area Helper")
    }
}

struct AreaOfTriangleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaOfTriangleView()
        }
    }
}
