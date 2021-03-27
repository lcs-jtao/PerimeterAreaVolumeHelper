//
//  SurfaceAreaOfConeView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-24.
//

import SwiftUI

struct SurfaceAreaOfConeView: View {
    
    //MARK: Stored properties
    @State private var givenRadius = "0"
    @State private var givenSide = "0"
    
    //MARK: Computer properties
    
    private var actualRadius: Double{
        
        return Double(givenRadius) ?? 0
    }
    
    private var actualSide: Double{
        
        return Double(givenSide) ?? 0
    }
    
    private var surfaceArea: Double{
        return surfaceAreaOfCone(r: actualRadius, s: actualSide)
    }
    
    var body: some View {
        
        Form {
            
            Image("cone")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the radius (r) of the cone")
                .bold()
            TextField("Radius", text :$givenRadius)
            
            Text("Enter the side (s) of the cone")
                .bold()
            TextField("Side", text :$givenSide)
            
            //OUTPUT
            Text("The surface area of the cone is \(String(format: "%.3f", surfaceArea))")
            
            Button("Clear input") {
                givenRadius = "0"
                givenSide = "0"
            }
        }
        .navigationTitle("Cone Surface Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfaceAreaOfConeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaOfConeView()
        }
    }
}
