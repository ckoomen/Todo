//
//  RingView.swift
//  Todo
//
//  Created by Camiel Koomen on 23/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
		ZStack {
			Circle()
				.stroke(Color.black.opacity(0.1),
						style: StrokeStyle(lineWidth: 5))
				.frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			
			Circle()
				.trim(from: 0.2, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
				.stroke(
					LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),
						
					style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0))
				.rotationEffect(.init(degrees: 90))
				.rotation3DEffect(
					Angle(degrees: 180),
					axis: (x: 1.0, y: 0.0, z: 0.0))
				.frame(width: 44, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
				.shadow(color: (Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.1)), radius: 3, x: 0, y: 3)
			
			Text("82%")
				.font(.subheadline)
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
		}
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
