//
//  ContentView.swift
//  TrafficLight
//
//  Created by Семен Выдрин on 12.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLightVisible = false
    @State var yellowLightVisible = false
    @State var greenLightVisible = false
    
    @State var titleButton = "START"
    
    @State var currentColor = TrafficLight.red
    
    let signalIsOn: CGFloat = 1
    let signalIsOff: CGFloat = 0.3
    
    var body: some View {
        VStack(spacing: 100) {
            VStack(spacing: 10) {
                CircleView(color: .red)
                    .opacity(redLightVisible ? signalIsOn : signalIsOff)
                CircleView(color: .yellow)
                    .opacity(yellowLightVisible ? signalIsOn : signalIsOff)
                CircleView(color: .green)
                    .opacity(greenLightVisible ? signalIsOn : signalIsOff)
            }
            
            Button(action: {changeLightDidTapped()}) {
                Text(titleButton)
                    .font(.title)
            }
            .frame(width: 100, height: 50)
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
        }
    }
    
    private func changeLightDidTapped() {
        if titleButton == "START" {
            titleButton = "NEXT"
        }
        
        withAnimation {
            switch currentColor {
            case .red:
                currentColor = .yellow
                redLightVisible = true
                greenLightVisible = false
            case .yellow:
                currentColor = .green
                redLightVisible = false
                yellowLightVisible = true
            case .green:
                currentColor = .red
                yellowLightVisible = false
                greenLightVisible = true
            }
        }
    }
}

extension ContentView {
    enum TrafficLight {
        case red, yellow, green
    }
}


#Preview {
    ContentView()
}
