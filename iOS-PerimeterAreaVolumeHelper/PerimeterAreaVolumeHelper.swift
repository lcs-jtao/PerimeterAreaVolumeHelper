//
//  iOS_PerimeterAreaVolumeHelperApp.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-18.
//

import SwiftUI

@main
struct PerimeterAreaVolumeHelper: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                NavigationView{
                    AreaMenuView()
                }
                .tabItem {
                    Image(systemName: "triangle.fill")
                    Text("Area")
                }
                
                NavigationView{
                    VolumeMenuView()
                }
                .tabItem {
                    Image(systemName: "pyramid")
                    Text("Volume")
                }
                
                NavigationView{
                    SurfaceAreaMenuView()
                }
                .tabItem {
                    Image(systemName: "pyramid.fill")
                    Text("Surface Area")
                }
            }
        }
    }
}
