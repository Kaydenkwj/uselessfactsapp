//
//  FactView.swift
//  useless facts app
//
//  Created by Allen Jeffrey on 1/7/23.
//

import SwiftUI
import ConfettiSwiftUI

struct FactView: View {
    let facts = [
        Fact(title: "The average person spends about six months of their lifetime waiting for red traffic lights to turn green."),
        Fact(title: "The shortest war in history lasted only 38 to 45 minutes, between Britain and Zanzibar in 1896."),
        Fact(title: "A group of flamingos is called a 'flamboyance'."),
        Fact(title: "The world's oldest known piece of chewing gum is over 9,000 years old."),
        Fact(title: "The dot over the letter 'i' is called a 'tittle'."),
        Fact(title: "A single strand of spaghetti is called a 'spaghetto'."),
        Fact(title: "The longest English word without any repeated letters is 'dermatoglyphics'."),
        Fact(title: "Honey never spoils, as archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible."),
        Fact(title: "The fear of long words is called 'hippopotomonstrosesquippedaliophobia'."),
        Fact(title: "The average person walks the equivalent of three times around the world in their lifetime."),
        Fact(title: "Peanuts are not actually nuts, but legumes."),
        Fact(title: "There are more possible iterations of a game of chess than there are atoms in the observable universe."),
        Fact(title: "Cows have best friends and can become stressed when they are separated."),
        Fact(title: "The world's oldest known recipe is a beer recipe from ancient Sumer, dating back to around 1800 BCE."),
        Fact(title: "The name 'Google' originated from a misspelling of 'googol,' which refers to the number represented by a 1 followed by 100 zeros."),
        Fact(title: "The electric chair was invented by a dentist."),
        Fact(title: "Humans share about 50% of their DNA with bananas."),
        Fact(title: "A flock of crows is called a 'murder.'"),
        Fact(title: "The average person blinks around 15-20 times per minute.")
    ]
    
    @State private var index = 0
    @State private var showSheet = false
    var body: some View {
        VStack {
            Text("**Useless Facts**")
                .font(.largeTitle)
                .offset(x: 0, y: -180)
            Text("_you did not need to know!_")
                .offset(x: 0, y: -180)
            
            Text("**Did you know?**")
                .font(.largeTitle)
                .offset(x: 0, y: -20)
            
            Text(facts[index].title)
                .font(.system(size: 25))
                .offset(x: 0, y: -20)
                .multilineTextAlignment(.center)
            
            HStack{
                Button{
                    index += 1
                    if index == facts.count {
                        index = 0
                        print("Reset Index")
                    }
                } label: {
                    Text("Wow!")
                        .padding()
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(14)
                        
                }
                .offset(x: -30, y: -10)
                
                Button{
                    showSheet = true
                } label: {
                    Text("Bad!")
                        .padding()
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(14)
                        
                }
                .offset(x: 30, y: -10)
            }
        }
        .sheet(isPresented: $showSheet){
            FeedBackView()
        }
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        FactView()
            .preferredColorScheme(.dark)
    }
}
