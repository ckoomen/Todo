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
	@State var viewState = CGSize.zero
	
    var body: some View {
		ZStack {
			Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			HomeView(showProfile: $showProfile)
				.padding(.top, 44)
				//			.background(Color.white)
				.background(showProfile ? Color("card2") : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
				.clipShape(RoundedRectangle(cornerRadius: 30))
				.shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
				.offset(y: showProfile ? -450 : 0)
				.rotation3DEffect(Angle(degrees: showProfile ? Double(viewState.height / 20) - 10 : 0), axis : (x: 10.0, y: 0.0, z: 0.0))
				.scaleEffect(showProfile ? 0.9 : 1)
				.animation(.spring())
				.edgesIgnoringSafeArea(.all)
			
			MenuView()
				.background(Color.black.opacity(0.001))
				.offset(y:showProfile ? 0 : screen.height)
				.offset(y:viewState.height)
				.animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
				.onTapGesture {
					self.showProfile.toggle()
			}
			.gesture(
				DragGesture().onChanged { value in
				self.viewState = value.translation
			}
				.onEnded { value in
					if self.viewState.height > 50 {
						self.showProfile = false
//					else if self.viewState.height < 600
//							self.showProfile = false
					}
					(self.viewState = .zero)
			}
		)
		}
		
	
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct AvatarView: View {
	@Binding var showProfile: Bool
	
	
	var body: some View {
		Button(action: {self.showProfile.toggle()}) {
			Image("Avatar")
				.resizable()
				.frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
				.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
		}
	}
}

let screen = UIScreen.main.bounds
