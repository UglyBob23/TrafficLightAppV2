//
//  ColorCircle.swift
//  TrafficLightAppV2
//
//  Created by Владимир Паутов on 22.07.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    var opacity: Double
    
    var body: some View {
        Color(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.3)
    }
}
