//
//  ContentView.swift
//  iOS-PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-18.
//

import SwiftUI

struct ContentView: View {
    
    
    //MARK: Stored properties
    //Store the name (cannot be changed)
    @State private var name = ""
    
    //MARK: Computer properties
    var body: some View {
        
        //There can only be ONE view at the top level of the body property
        
        //VStack is a structure that vertically stacks views on top of each other
        //Right now, the only argument to the VStack is a trailing closure...the { }
        VStack {
            
            //$name means "connect this field to the name property" ($ is a bounding -  field is bound to the name property)
            TextField("Enter a name", text: $name)
            Text("Hello, \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
