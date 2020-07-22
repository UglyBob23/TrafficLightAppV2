//
//  Background.swift
//  TrafficLightAppV2
//
//  Created by Владимир Паутов on 22.07.2020.
//  Copyright © 2020 Владимир Паутов. All rights reserved.
//

import SwiftUI

struct Background: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background(color: .black)
    }
}
