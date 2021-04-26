//
//  ContentView.swift
//  CreateCustomViewMultipleViewBuilderParameters
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomView {
            
            RoundedRectangle(cornerRadius: 25.0)
                .padding()
            
        } content2: {
            
            Circle()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
