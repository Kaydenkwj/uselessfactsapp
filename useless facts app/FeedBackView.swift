//
//  FeedBackView.swift
//  useless facts app
//
//  Created by Allen Jeffrey on 1/7/23.
//

import SwiftUI
import ConfettiSwiftUI
import Subsonic

struct FeedBackView: View {
    @State private var catSize = 0.0000001
    @State private var counter = 0
    @State private var catRotation = Angle.degrees(0)
    var body: some View {
        ZStack{
            Image("angry")
                .offset(x:-20,y: 50)
                .scaledToFit()
                .scaleEffect(catSize)
                .rotationEffect(catRotation)
                .onAppear {
                    withAnimation(.interactiveSpring(response: 0.2, dampingFraction: 0.2, blendDuration: 4)) {
                        catSize = 1.5
                        catRotation = .degrees(360)
                    }
                }
                .ignoresSafeArea()
            VStack{
                Text("Thank you for your feedback.\n We will get back to you within \n 3 to 5 business days (or not)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .offset(x: 0, y: 90)
            }
            .presentationDragIndicator(.visible)
            .presentationDetents([.medium])
            
        }
        .onAppear{
            counter += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                play(sound: "example.mp3")
            }
        }
        .confettiCannon(counter: $counter, num: 100, radius: 500.0)
    }
}

struct FeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedBackView()
    }
}
