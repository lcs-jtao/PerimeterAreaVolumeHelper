//
//  SurfaceAreaOfSphereView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-24.
//

import SwiftUI

struct SurfaceAreaOfSphereView: View {
    
    //MARK: Stored properties
    @State private var givenRadius = "0"
    
    //MARK: Computer properties
    
    private var actualRadius: Double{
        
        return Double(givenRadius) ?? 0
    }
    
    private var surfaceArea: Double{
        return surfaceAreaOfSphere(r: actualRadius)
    }
    
    var body: some View {
        
        Form {
            
            Image("sphere")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the radius (r) of the sphere")
                .bold()
            TextField("Radius", text :$givenRadius)
            
            //OUTPUT
            Text("The surface area of the sphere is \(String(format: "%.3f", surfaceArea))")
            
            Button("Clear input") {
                givenRadius = "0"
            }
        }
        .navigationTitle("Sphere Surface Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfaceAreaOfSphereView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaOfSphereView()
        }
    }
}
