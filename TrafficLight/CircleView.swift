//
//  CircleView.swift
//  TrafficLight
//
//  Created by Семен Выдрин on 12.10.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 100, height:100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 2.0))
            .shadow(radius: 10)
        
    }
}
    
#Preview {
        CircleView(color: .red)
    }

