//
//  VolumeOfSphere.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfSphereView: View {
    
    //MARK: Stored properties
    @State private var givenRadius = "0"
    
    //MARK: Computer properties
    
    private var actualRadius: Double{
        
        return Double(givenRadius) ?? 0
    }
    
    private var volume: Double{
        return volumeOfSphere(r: actualRadius)
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
            Text("The volume of the sphere is \(String(format: "%.3f", volume))")
            
            Button("Clear input") {
                givenRadius = "0"
            }
        }
        .navigationTitle("Sphere Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfSphereView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfSphereView()
        }
    }
}
