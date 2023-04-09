//
//  ThreeDButton.swift
//  wwdc
//
//  Created by 정현 on 2023/04/09.
//

import SwiftUI

struct ThreeDButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            
            let offset: CGFloat = 5
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(Color(red: 78/255, green: 195/255,blue:7/255))
                .offset(y: offset)
            
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(Color(red: 103/255, green: 235/255,blue:8/255))
                .offset(y:configuration.isPressed ? offset : 0)
            
            configuration.label
                .offset(y:configuration.isPressed ? offset : 0)
        }
        .compositingGroup()
        .shadow(radius: 6, y: 4)
    }
}

struct ThreeDButton_Previews: PreviewProvider {
    static var previews: some View {
        Button("Button"){
            
        }
        .foregroundColor(.white)
        .frame(width: 100, height: 30)
        .buttonStyle(ThreeDButton())
    }
}
