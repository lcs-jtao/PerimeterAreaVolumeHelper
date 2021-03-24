//
//  SurfaceAreaOfTriangularPrismView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-24.
//

import SwiftUI

struct SurfaceAreaOfTriangularPrismView: View {
    
    //MARK: Stored properties
    @State private var givenBase = "0"
    @State private var givenHeight = "0"
    @State private var givenLength = "0"
    @State private var givenSideC = "0"
    @State private var givenSideA = "0"
    
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
    
    private var actualSideC: Double{
        
        return Double(givenSideC) ?? 0
    }
    
    private var actualSideA: Double{
        
        return Double(givenSideA) ?? 0
    }
    
    private var surfaceArea: Double{
        return surfaceAreaOfTriangularPrism(l: actualLength, b: actualBase, h: actualHeight, c: actualSideC, a: actualSideA)
    }
    
    var body: some View {
        
        Form {
            
            Image("triangular prism")
                .resizable()
                .scaledToFit()
                .padding(50)
            
            //INPUT
            Group{
                Text("Enter the base (b) of the prism")
                    .bold()
                TextField("Base", text :$givenBase)
                
                Text("Enter the height (h) of the prism")
                    .bold()
                TextField("Height", text :$givenHeight)
            }
            
            Group{
                Text("Enter the bottom length (l) of the prism")
                    .bold()
                TextField("Length", text :$givenLength)
                
                Text("Enter side c (c) of the prism")
                    .bold()
                TextField("Side c", text :$givenSideC)
                
                Text("Enter side a (a) of the prism")
                    .bold()
                TextField("Side a", text :$givenSideA)
            }
            
            //OUTPUT
            Text("The surface area of the triangular prism is \(surfaceArea)")
            
            Button("Clear input") {
                givenLength = "0"
                givenBase = "0"
                givenHeight = "0"
                givenSideC = "0"
                givenSideA = "0"
            }
        }
        .navigationTitle("Triangular Prism Surface Area Helper")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurfaceAreaOfTriangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaOfTriangularPrismView()
        }
    }
}
