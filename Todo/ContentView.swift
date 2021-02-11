//
//  ContentView.swift
//  Todo
//
//  Created by Camiel Koomen on 22/03/2020.
//  Copyright © 2020 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State var show = false
	@State var viewState = CGSize.zero
	@State var showCard = false
	@State var bottomState = CGSize.zero
	@State var showFull = false

    var body: some View {
		ZStack {
			TitleView()
				.blur(radius: show ? 20 : 0 )
				.opacity(showCard ? 0.4 : 1)
				.offset(y: showCard ? -200: 0)
				.animation(
					Animation
						.default
						.delay(0.1)
//						.speed(2)
//						.repeatCount(3, autoreverses:false)
				)
			
			BackCardView()
				.frame(width: showCard ? 300: 340, height: 220)
				.background(show ? Color ("card1") : Color("card2"))
				.cornerRadius(20)
				.shadow(radius: 20)
				.offset(x:0, y: show ? -400 : -40)
				.offset(x: viewState.width, y: viewState.height)
				.offset(y: showCard ? -180 : 0)
				.scaleEffect(0.9)
				.scaleEffect(showCard ? 1 : 0.9)
				.rotationEffect(.degrees(show ? 0 : 10))
				.rotationEffect(Angle(degrees: showCard ? -10 : 0))
				.rotation3DEffect(Angle(degrees: showCard ? 0 : 10),
								  axis: (x: 10.0, y: 0, z: 0 ))
				.blendMode(.hardLight)
				.animation(.easeInOut(duration: 0.5))
			
			BackCardView()
				.frame(width: 340, height: 220)
				.background(show ? Color("card3") : Color("card2"))
				.cornerRadius(20)
				.shadow(radius: 20)
				.offset(x:0, y: show ? -200 : -20)
				.offset(x: viewState.width, y: viewState.height)
				.offset(y: showCard ? -140 : 0)
				.scaleEffect(0.95)
				.scaleEffect(showCard ? 1 : 0.95)
				.rotationEffect(Angle.degrees(show ? 0 : 5))
				.rotationEffect(Angle(degrees: showCard ? -5 : 0))
				.rotation3DEffect(Angle(degrees: showCard ? 0 : 5),
								  axis: (x: 10.0, y: 0, z: 0 ))
				.blendMode(.hardLight)
				.animation(.easeInOut(duration: 0.3))
			
			CardView()
				.frame(width: showCard ? 375 : 340, height: 220.0)
				.background(Color("background1"))
//				.cornerRadius(20)
				.clipShape(RoundedRectangle(cornerRadius: showCard ? 30: 20, style: . continuous))
				.shadow(radius: 20)
				.offset(x: viewState.width, y: viewState.height)
				.offset(y: showCard ? -100 : 0)
				.blendMode(.hardLight)
				.animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
				.onTapGesture {
					self.showCard.toggle()
				}
				.gesture(
					DragGesture().onChanged { value in
						self.viewState = value.translation
						self.show = true
					}
					.onEnded { value in
						self.viewState = .zero
						self.show = false
						}
					)
			
//			Text("\(bottomState.height)").offset(y: -300)
			
			BottomCardView()
				.offset(x: 0, y: showCard ? 360 : 1400)
				.offset(y: bottomState.height)
				.blur(radius: show ? 20 : 0)
				.animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
			.gesture(
				DragGesture().onChanged { value in
					self.bottomState = value.translation
					if self.showFull {
					self.bottomState.height += -300
					}
						if self.bottomState.height < -300 {
							self.bottomState.height = -300
					}
				}
					.onEnded { value in
						if self.bottomState.height > 70 {
							self.showCard = false
						}
						if (self.bottomState.height < -100 &&
								!self.showFull) || (self.bottomState.height < -200 && self.showFull){
							self.bottomState.height = -300
							self.showFull = true
						} else {
							self.bottomState = .zero
							self.showFull = false
						}
				}
			)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
	var body: some View {
		VStack {
			HStack {
				VStack(alignment: .leading){
					Text("Hello, World")
						.font(.title)
						.foregroundColor(Color("accent"))
						.fontWeight(.semibold)
					Text("Tryouts")
				}
				Spacer()
				Image("Logo1")
			}
			.padding(.horizontal, 20)
			.padding(.top, 20)
			Spacer()
			Image("Card1")
				
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 300, height: 110, alignment: .top)
		}

	}
}

struct BackCardView: View {
	var body: some View {
		VStack{
			Spacer()
		}


	
	}
}

struct TitleView: View {
	var body: some View {
		VStack {
			HStack {
				Text("Animation test")
					.font(.largeTitle)
					.fontWeight(.bold)
				Spacer()
			}
			.padding()
			Image("Background1")
			Spacer()
		}
	}
}

struct BottomCardView: View {
	var body: some View {
		VStack(spacing: 20) {
			Rectangle()
				.frame(width: 40, height: 5)
				.cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
				.opacity(0.1)
			Text("This certificate is proof that Camiel is starting with someSwiftUI courses")
				.multilineTextAlignment(.center)
				.font(.subheadline)
				.lineSpacing(4)
			Spacer()
		}
		.padding(.top, 8)
		.padding(.horizontal, 20)
		.frame(maxWidth: .infinity)
		.background(Color.white)
		.cornerRadius(30)
		.shadow(radius: 20)
//		.offset(x: 0, y: 500)
	}
}
