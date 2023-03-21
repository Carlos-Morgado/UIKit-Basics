//
//  SwiftUIView.swift
//  UKit-Basics
//
//  Created by Carlos Morgado on 18/3/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    var body: some View {
        VStack {
            Text("SwiftUI es la poia")
                .foregroundColor(.green)
                .padding()
            
            Text("Carlos, hazme caso, esto es la hostia")
                .foregroundColor(.blue)
                .padding()
            
            HStack {
                Text("Swift")
                    .padding()
                Text("Objective-C")
                    .padding()
            }
            .padding()
            
            AppleImage(imageName: "mockup", text: "Apple 1", alignment: .top)
            
            AppleImage(imageName: "uikit-example-screen", text: "Apple 2", alignment: .bottom)
            
            Button("Este botón mola que te cagas") {
                print("He pulsado el botón")
            }
            .buttonStyle(.bordered)
            
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
                Text("Item 4")
                Text("Item 5")
                Text("Item 6")
                Text("Item 7")
            }
            .padding(.top, 20)
        }
        .background(Color(uiColor: UIColor(named: "Basic-Background-Color")!))
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
        
        SwiftUIView()
            .preferredColorScheme(.dark)
    }
}

struct AppleImage: View {

    let imageName: String
    let text: String
    let alignment: Alignment
    
    var body: some View {
        ZStack(alignment: alignment) {
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 100)
                .scaledToFill()
                .padding()
            
            Text(text)
                .foregroundColor(.red)
        }
    }
    
}
