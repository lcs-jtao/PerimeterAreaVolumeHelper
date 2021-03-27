//
//  SurfaceAreaOfPyramidView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-24.
//

import SwiftUI

struct SurfaceAreaOfPyramidView: View {
    
    //MARK: Stored properties
    @State private var givenBase = "0"
    @State private var givenSide = "0"
    
    //MARK: Computer properties
    
    private var actualBase: Double{
        
        return Double(givenBase) ?? 0
    }
    
    private var actualSide: Double{
        
        return Double(givenSide) ?? 0
    }
    
    private var surfaceArea: Double{
        return surfaceAreaOfPyramid(b: actualBase, s: actualSide)
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
            
            Text("Enter the side (s) of the pyramid")
                .bold()
            TextField("Side", text :$givenSide)
            
            //OUTPUT
            Text("The surface area of the pyramid is \(String(format: "%.3f", surfaceArea))")
            
            Button("Clear input") {
                givenBase = "0"
                givenSide = "0"
            }
        }
        .navigationTitle("Square-based Pyramid Surface Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfaceAreaOfPyramidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaOfPyramidView()
        }
    }
}
