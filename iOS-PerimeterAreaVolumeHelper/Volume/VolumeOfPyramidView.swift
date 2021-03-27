//
//  VolumeOfPyramidView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfPyramidView: View {
    
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
    
    private var volume: Double{
        return volumeOfPyramid(b: actualBase, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("pyramid")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the base (b) of the pyramid")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height (h) of the pyramid")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The volume of the pyramid is \(String(format: "%.3f", volume))")
            
            Button("Clear input") {
                givenBase = "0"
                givenHeight = "0"
            }
        }
        .navigationTitle("Square-based Pyramid Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfPyramidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfPyramidView()
        }
    }
}
