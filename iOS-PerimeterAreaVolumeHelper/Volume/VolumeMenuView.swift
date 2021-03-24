//
//  VolumeMenuView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-23.
//

import SwiftUI

struct VolumeMenuView: View {
    var body: some View {
        List {
            NavigationLink(
                destination: VolumeOfCylinderView(),
                label: {
                    Text("Cylinder")
                })
            
            NavigationLink(
                destination: VolumeOfSphereView(),
                label: {
                    Text("Sphere")
                })
            
            NavigationLink(
                destination: VolumeOfConeView(),
                label: {
                    Text("Cone")
                })
            
            NavigationLink(
                destination: VolumeOfPyramidView(),
                label: {
                    Text("Square-based pyramid")
                })
            
            NavigationLink(
                destination: VolumeOfRectangularPrismView(),
                label: {
                    Text("Rectangular Prism")
                })
            
            NavigationLink(
                destination: VolumeOfTriangularPrismView(),
                label: {
                    Text("Triangular Prism")
                })
        }
        .navigationTitle("Volume Helpers")
    }
}

struct VolumeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            VolumeMenuView()
        }
    }
}
