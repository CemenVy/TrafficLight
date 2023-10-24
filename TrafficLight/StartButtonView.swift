//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by Семен Выдрин on 24.10.2023.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action:() -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(minWidth: 200, minHeight: 60)
        .background(Color(.blue))
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
