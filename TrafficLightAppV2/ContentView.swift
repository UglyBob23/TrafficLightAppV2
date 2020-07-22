//
//  ContentView.swift
//  TrafficLightAppV2
//
//  Created by Владимир Паутов on 22.07.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLight = ColorCircle(color: .red, opacity: 0.3)
    @State var yellowLight = ColorCircle(color: .yellow, opacity: 0.3)
    @State var greenLight = ColorCircle(color: .green, opacity: 0.3)
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var tapCount = 0
    @State private var buttonText = "Start"
    
    private func switchLight() {
        switch tapCount {
        case 0:
            redLight.opacity = lightIsOn
            tapCount += 1
            buttonText = "Next"
        case 1:
            redLight.opacity = lightIsOff
            yellowLight.opacity = lightIsOn
            tapCount += 1
        case 2:
            yellowLight.opacity = lightIsOff
            greenLight.opacity = lightIsOn
            tapCount += 1
        case 3:
            greenLight.opacity = lightIsOff
            redLight.opacity = lightIsOn
            tapCount = 1
        default:
            break
        }
    }
    
    var body: some View {
        ZStack {
            Background(color: .black)
            VStack {
                redLight
                yellowLight
                greenLight
                
                Spacer()
                
                Button(action: { self.switchLight() },
                       label: { CustomButton(buttonText: buttonText) })
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
