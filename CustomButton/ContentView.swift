//
//  ContentView.swift
//  CustomButton
//
//  Created by Puspank Kumar on 23/05/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        Text("Hello, World!")
        CustomButton()
    }
}


struct CustomButton: View {
    
    @State var count = 0
    var body: some View {
        
        ZStack {
            Button(action: {
                self.count += 1
                print("clicked")
            }) {
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            
            if count != 0 {
                Text("\(count)")
                    .padding(6)
                    .background(Color.black)
                    .clipShape(Circle())
                    .foregroundColor(.white)
                .offset(x: 17, y: -25)
            }
            

        }.animation(.spring())
        
    }
}
