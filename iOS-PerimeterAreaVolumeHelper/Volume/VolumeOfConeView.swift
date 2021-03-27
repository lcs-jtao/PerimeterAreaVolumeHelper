//
//  VolumeOfCone.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfConeView: View {
    
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
    
    private var volume: Double{
        return volumeOfCone(r: actualRadius, h: actualHeight)
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
            
            Text("Enter the height (h) of the cone")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The volume of the cone is \(String(format: "%.3f", volume))")
            
            Button("Clear input") {
                givenRadius = "0"
                givenHeight = "0"
            }
        }
        .navigationTitle("Cone Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfConeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfConeView()
        }
    }
}
