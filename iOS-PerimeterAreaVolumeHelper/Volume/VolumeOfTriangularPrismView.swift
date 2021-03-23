//
//  VolumeOfTriangularPrismView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeOfTriangularPrismView: View {
    
    //MARK: Stored properties
    @State private var givenBase = "0"
    @State private var givenHeight = "0"
    @State private var givenLength = "0"
    
    //MARK: Computer properties
    
    private var actualBase: Double{
        
        return Double(givenBase) ?? 0
    }
    
    private var actualHeight: Double{
        
        return Double(givenHeight) ?? 0
    }
    
    private var actualLength: Double{
        
        return Double(givenLength) ?? 0
    }
    
    private var volume: Double{
        return volumeOfTriangularPrism(l: actualLength, b: actualBase, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("triangular prism")
                .resizable()
                .scaledToFit()
                .padding(50)
            
            //INPUT
            Text("Enter the base (b) of the prism")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height (h) of the prism")
                .bold()
            TextField("Height", text :$givenHeight)
            
            Text("Enter the length (l) of the prism")
                .bold()
            TextField("Length", text :$givenLength)
            
            //OUTPUT
            Text("The volume of the triangular prism is \(volume)")
        }
        .navigationTitle("Triangular Prism Volume Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOfTriangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeOfTriangularPrismView()
        }
    }
}
