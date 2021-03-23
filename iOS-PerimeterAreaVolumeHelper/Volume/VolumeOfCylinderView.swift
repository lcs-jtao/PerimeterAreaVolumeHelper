//
//  VolumeOfCylinderView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfCylinderView: View {
    
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
        return volumeOfCylinder(r: actualRadius, h: actualHeight)
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
            Text("The volume of the cylinder is \(volume)")
        }
        .navigationTitle("Cylinder Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfCylinderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfCylinderView()
        }
    }
}
