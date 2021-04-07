//
//  RingView.swift
//  Todo
//
//  Created by Camiel Koomen on 23/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct RingView: View {
	var color1 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
	var color2 = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
	var width: CGFloat = 300
	var height: CGFloat = 300
	var percent: CGFloat = 22

	
	
	
    var body: some View {
		let multiplier = width / 44
		let progress = 1 - (percent / 100)
		return ZStack {
			
			
			Circle()
				.stroke(Color.black.opacity(0.1),
						style: StrokeStyle(lineWidth: 5 * multiplier))
				.frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			
			Circle()
				.trim(from: progress, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
				.stroke(
					LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .topTrailing, endPoint: .bottomLeading),
						
					style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0))
				.rotationEffect(.init(degrees: 90))
				.rotation3DEffect(
					Angle(degrees: 180),
					axis: (x: 1.0, y: 0.0, z: 0.0))
				.frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
				.shadow(color: (Color(color2).opacity(0.1)), radius: 3, x: 0, y: 3 * multiplier)
			
			Text("\(Int(percent))%")
				.font(.system(size: 14 * multiplier))
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
		}
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
