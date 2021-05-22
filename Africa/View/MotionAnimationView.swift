//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Felipe Lobo on 21/05/21.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Functions
    // random Coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    //random size
    func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 10...300))
    }
    // random scale
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //random speed
    func randomSpeed() -> Double{
        return Double.random(in: 0.025...1.0)
    }
    //random delay
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.height), y: randomCoordinate(max: geometry.size.width)
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }//Loop
            }//ZStack
            .drawingGroup()
        }//Geometry
        .edgesIgnoringSafeArea(.all)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
