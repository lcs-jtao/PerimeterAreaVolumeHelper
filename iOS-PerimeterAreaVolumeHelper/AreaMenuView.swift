//
//  AreaMenuView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-22.
//

import SwiftUI

struct AreaMenuView: View {
    var body: some View {
        
        //Shows a scrollable list of items that can be selected
        List {
            NavigationLink(
                destination: AreaOfRectangleView(),
                label: {
                    Text("Rectangle")
                })
            
        }
        .navigationTitle("Area Helpers")
    }
}

struct AreaMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AreaMenuView()
        }
    }
}
