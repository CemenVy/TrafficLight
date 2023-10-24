//
//  CircleView.swift
//  TrafficLight
//
//  Created by Семен Выдрин on 12.10.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}
    
#Preview {
    CircleView(color: .red, opacity: 1)
    }

