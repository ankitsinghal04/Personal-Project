//
//  timer.swift
//  Home1
//
//  Created by Ankit Singhal on 03.02.20.
//  Copyright © 2020 Ankit Singhal. All rights reserved.
//

import SwiftUI

struct timer: View {
    @State var circleProgress: CGFloat = 0.0
        
    var body: some View {
            VStack {
                ZStack {
                    Circle()
                    .stroke(Color.black, lineWidth: 11)
                    .frame(width: 75, height: 75)
                    
                    Circle()
                    .trim(from: 0.0, to: circleProgress)
                    .stroke(Color.gray, lineWidth: 11)
                    .frame(width: 75, height: 75)
                    .rotationEffect(Angle(degrees: -90))
                        .onAppear{
                            self.startLoading()
                    }
                    
                    Text("00:\(Int(30 - self.circleProgress*30))")
                    .font(.custom("HelveticaNeue", size: 20.0))
                        .foregroundColor(.black)
                }
                
            }
                
            
            
        }
        
        func startLoading() {
            
            _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                withAnimation() {
                    self.circleProgress += 0.0033
                    if self.circleProgress >= 1.0 {
                        timer.invalidate()
                    }
                }
            }
        }
    }

struct timer_Previews: PreviewProvider {
    static var previews: some View {
        timer()
    }
}
