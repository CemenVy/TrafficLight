//
//  ContentView.swift
//  TrafficLight
//
//  Created by Семен Выдрин on 12.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - State properties
    @State private var titleButton = "START"
    @State private var currentColor = TrafficLight.off
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                CircleView(
                    color: .red,
                    opacity: currentColor == .red ? 1 : 0.3
                )
                CircleView(
                    color: .green,
                    opacity: currentColor == .yellow ? 1 : 0.3
                )
                CircleView(
                    color: .yellow,
                    opacity: currentColor == .green ? 1 : 0.3
                )
                
                Spacer()
                
                StartButtonView(title: titleButton) {
                    if titleButton == "START" {
                        titleButton = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    // MARK: - Private methods
    private func nextColor() {
        switch currentColor {
        case .off: currentColor = .red
        case .red: currentColor = .yellow
        case .yellow: currentColor = .green
        case .green: currentColor = .red
        }
        
    }
}

    // MARK: - Extension Traffic Light
extension ContentView {
    private enum TrafficLight {
        case off, red, yellow, green
    }
}


#Preview {
    ContentView()
}
