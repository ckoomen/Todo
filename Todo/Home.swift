//
//  Home.swift
//  Todo
//
//  Created by Camiel Koomen on 15/02/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct Home: View {
	@State var showProfile = false
	
    var body: some View {
		ZStack {
			Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			VStack {
				HStack {
					Text("Watching")
						.font(.system(size: 28, weight: .bold))
						
					
					Spacer()
					Button(action: {self.showProfile.toggle()}) {
						Image("Avatar")
							.resizable()
							.frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
							.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
				
						
					}
				}
				.padding(.horizontal)
				.padding(.top, 30)
				
				Spacer()
			}
			.padding(.top, 44)
//			.background(Color.white)
			.background(showProfile ? Color("card2") : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
			.clipShape(RoundedRectangle(cornerRadius: 30))
			.shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
			.offset(y: showProfile ? -450 : 0)
			.rotation3DEffect(Angle(degrees: showProfile ? -10 : 0), axis : (x: 10.0, y: 0.0, z: 0.0))
			.scaleEffect(showProfile ? 0.9 : 1)
			.animation(.spring())
			.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			
			MenuView()
				.offset(y:showProfile ? 0 : 600)
				.animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
		}
		
	
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
