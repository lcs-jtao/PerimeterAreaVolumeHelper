//
//  AreaOfParallelogramView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-19.
//

import SwiftUI

struct AreaOfParallelogramView: View {
    
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
    
    private var area: Double{
        return areaOfParallelogram(b: actualBase, h: actualHeight)
    }
    
    var body: some View {
        
        Form {
            
            Image("parallelogram")
                .resizable()
                .scaledToFit()
            
            //INPUT
            Text("Enter the base (b) of the parallelogram")
                .bold()
            TextField("Base", text :$givenBase)
            
            Text("Enter the height (h) of the parallelogram")
                .bold()
            TextField("Height", text :$givenHeight)
            
            //OUTPUT
            Text("The area of the parallelogram is \(area)")
        }
        .navigationTitle("Parallelogram Area Helper")
    }
}

struct AreaOfParallelogramView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaOfParallelogramView()
        }
    }
}
