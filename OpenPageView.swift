//
//  OpenPageView.swift
//  wwdc
//
//  Created by 정현 on 2023/04/09.
//

import SwiftUI

struct OpenPageView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("Purple_1"),Color("Purple_2"),Color("Purple_3"),]),
                           startPoint: .top, endPoint: .bottom)
            VStack(alignment: .center,spacing: 110) {
                VStack(alignment: .center, spacing: -10){
                    VStack(alignment: .center,spacing: -105){
                        Text("Game")
                            .font(.custom("Digitalt", size: 100))
                            .foregroundColor(Color("Yellow_2"))
                        Text("Game")
                            .font(.custom("Digitalt", size: 100))
                            .foregroundColor(Color("Yellow_1"))
                    }
                    VStack(alignment:.center,spacing: -145) {
                        Text("Name")
                            .font(.custom("Digitalt", size: 140))
                            .foregroundColor(Color("Purple_0"))
                        Text("Name")
                            .font(.custom("Digitalt", size: 140))
                            .foregroundColor(.white)
                    }
                }
                Button {
                    print("It's clicked")
                    
                } label :
                {
                    
                    NavigationLink(destination: ContentView()) {
                        Text("PLAY")
                    }
                }
                .buttonStyle(ThreeDButton())
                .font(.custom("Digitalt",size: 30))
                .frame(width: 100, height: 30)
                .foregroundColor(.white)
                
            }
        }.ignoresSafeArea(.all)
    }
}

struct OpenPageView_Previews: PreviewProvider {
    static var previews: some View {
        OpenPageView()
    }
}
