//
//  AreaOfCircleView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-19.
//

import SwiftUI

struct AreaOfCircleView: View {
    
    //MARK: Stored properties
    @State private var givenRadius = "0"
    
    //MARK: Computer properties
    
    private var actualRadius: Double{
        
        return Double(givenRadius) ?? 0
    }
    
    private var area: Double{
        return areaOfCircle(r: actualRadius)
    }
    
    var body: some View {
        
        Form {
            
            //INPUT
            Text("Enter the radius of the circle")
                .bold()
            TextField("Radius", text :$givenRadius)
            
            //OUTPUT
            Text("The area of the circle is \(area)")
        }
        .navigationTitle("Circle Area Helper")
    }
}

struct AreaOfCircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaOfCircleView()
        }
    }
}