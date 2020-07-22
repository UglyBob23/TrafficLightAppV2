//
//  CustomButton.swift
//  TrafficLightAppV2
//
//  Created by Владимир Паутов on 22.07.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var buttonText = "Start"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 150, height: 40)
                .foregroundColor(.blue)
                .overlay(RoundedRectangle(cornerRadius: 7).stroke(Color.white, lineWidth: 4))
            Text(buttonText)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
