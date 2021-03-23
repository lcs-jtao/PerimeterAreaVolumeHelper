//
//  VolumeOfRectangularPrism.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfRectangularPrismView: View {
    
    //MARK: Stored properties
    @State private var givenWidth = "0"
    @State private var givenHeight = "0"
    @State private var givenLength = "0"
    
    //MARK: Computer properties
    
    private var actualWidth: Double{
        
        return Double(givenWidth) ?? 0
    }
    
    private var actualHeight: Double{
        
        return Double(givenHeight) ?? 0
    }
    
    private var actualLength: Double{
        
        return Double(givenLength) ?? 0
    }
    
    private var volume: Double{
        return volumeOfRectangularPrism(l: actualLength, w: actualWidth, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("rectangular prism")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the width (w) of the prism")
                .bold()
            TextField("Width", text :$givenWidth)
            
            Text("Enter the height (h) of the prism")
                .bold()
            TextField("Height", text :$givenHeight)
            
            Text("Enter the length (l) of the prism")
                .bold()
            TextField("Length", text :$givenLength)
            
            //OUTPUT
            Text("The volume of the rectangular prism is \(volume)")
        }
        .navigationTitle("Rectangular Prism Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfRectangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfRectangularPrismView()
        }
    }
}
