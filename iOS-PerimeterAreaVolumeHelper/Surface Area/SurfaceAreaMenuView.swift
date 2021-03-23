//
//  SurfaceAreaMenuView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct SurfaceAreaMenuView: View {
    var body: some View {
        List {
            NavigationLink(
                destination: AreaOfRectangleView(),
                label: {
                    Text("Rectangle")
                })
            
            NavigationLink(
                destination: AreaOfCircleView(),
                label: {
                    Text("Circle")
                })
            
            NavigationLink(
                destination: AreaOfTriangleView(),
                label: {
                    Text("Triangle")
                })
            
            NavigationLink(
                destination: AreaOfParallelogramView(),
                label: {
                    Text("Parallelogram")
                })
            
            NavigationLink(
                destination: AreaOfTrapezoidView(),
                label: {
                    Text("Trapezoid")
                })
        }
        .navigationTitle("Surface Area Helpers")
    }
}

struct SurfaceAreaMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfaceAreaMenuView()
        }
    }
}
