//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Shivam on 22/07/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var expanded: Bool = false
    
    
    var body: some View {
        ZStack {
            Card(name: "Swift India Pass", color: .blue)
                .offset(x:0, y: expanded ? -400 : -60)
                .scaleEffect(expanded ? 1 : 0.90)
            
            
            Card(name: "Try! Swift Pass", color: .yellow)
                .offset(x: 0, y: expanded ? -200 : -30)
                .scaleEffect(expanded ? 1 : 0.95)
            
            
            Card(name: "WWDC Pass", color: .black)
                .tapAction {
                    self.expanded.toggle()
                }
        }
            .offset(x: 0, y: expanded ? 200 : 0)
        .animation(
            self.springAnimation()
        )

    }
    
    func springAnimation() -> Animation{
        let anim = Animation.spring()
                    .delay(2)
        
        return anim
        
    }
    
}

struct Card : View {
    var name: String
    var color: Color
    
    var body : some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(width: 350, height: 200)
                .cornerRadius(20.0)
            
            Text(name)
                .color(.white)
                .bold()
                .font(.largeTitle)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
