//
//  SurfaceAreaOfCylinderView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-24.
//

import SwiftUI

struct SurfaceAreaOfCylinderView: View {
    
    //MARK: Stored properties
    @State private var givenRadius = "0"
    @State private var givenHeight = "0"
    
    //MARK: Computer properties
    
    private var actualRadius: Double{
        
        return Double(givenRadius) ?? 0
    }
    
    private var actualHeight: Double{
        
        return Double(givenHeight) ?? 0
    }
    
    private var surfaceArea: Double{
        return surfaceAreaOfCylinder(r: actualRadius, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("cylinder")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the radius (r) of the cylinder")
                .bold()
            TextField("Radius", text :$givenRadius)
            
            Text("Enter the height (h) of the cylinder")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The surface area of the cylinder is \(String(format: "%.3f", surfaceArea))")
            
            Button("Clear input") {
                givenRadius = "0"
                givenHeight = "0"
            }
        }
        .navigationTitle("Cylinder Surface Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfaceAreaOfCylinderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaOfCylinderView()
        }
    }
}
