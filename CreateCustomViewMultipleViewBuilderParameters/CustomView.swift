//
//  CustomView.swift
//  CreateCustomViewMultipleViewBuilderParameters
//
//  Created by 米国梁 on 2021/4/26.
//

import SwiftUI

struct CustomView<V1: View, V2: View>: View {
    
    let view1: V1
    
    let view2: V2
    
    init(@ViewBuilder content1: @escaping () -> V1, @ViewBuilder content2: @escaping () -> V2) {
        self.view1 = content1()
        self.view2 = content2()
    }
    
    var body: some View {

        VStack {
            
            VStack {
                
                Text("Part One")
                    .foregroundColor(.white)
                
                view1
            }
            .background(Color.red)
            
            VStack {
                
                Text("Part Two")
                    .foregroundColor(.white)
                
                view2
            }
            .background(Color.blue)
        }
        
    }
}
