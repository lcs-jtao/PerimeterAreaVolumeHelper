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
                destination: SurfaceAreaOfCylinderView(),
                label: {
                    Text("Cylinder")
                })
            
            NavigationLink(
                destination: SurfaceAreaOfSphereView(),
                label: {
                    Text("Sphere")
                })
            
            NavigationLink(
                destination: SurfaceAreaOfConeView(),
                label: {
                    Text("Cone")
                })
            
            NavigationLink(
                destination: SurfaceAreaOfPyramidView(),
                label: {
                    Text("Square-based pyramid")
                })
            
            NavigationLink(
                destination: SurfaceAreaOfRectangularPrismView(),
                label: {
                    Text("Rectangular Prism")
                })
            
            NavigationLink(
                destination: SurfaceAreaOfTriangularPrismView(),
                label: {
                    Text("Triangular Prism")
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
