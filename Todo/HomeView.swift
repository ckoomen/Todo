//
//  HomeView.swift
//  Todo
//
//  Created by Camiel Koomen on 16/02/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct HomeView: View {
	@Binding var showProfile: Bool
	
    var body: some View {
		VStack {
			HStack {
				Text("Watching")
					.font(.system(size: 28, weight: .bold))
					
				
				Spacer()
				AvatarView(showProfile: $showProfile)
			}
			.padding(.horizontal)
			.padding(.leading, 14)
			.padding(.top, 30)
			
			
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing:30) {
					ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
						SectionView()
					}
				}
				.padding(30)
				.padding(.bottom, 30)
			}
			
			Spacer()
		}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
		HomeView(showProfile: .constant(false))
    }
}

struct SectionView: View {
	var body: some View {
		VStack {
			HStack (alignment: .top){
				Text("Prototype designs in SwiftUI")
					.font(.system(size: 24, weight: .bold))
					.frame(width: 160, alignment: .leading)
				Spacer()
				Image("Logo1")
			}
			Text("18 Sections".uppercased())
				.frame(maxWidth: .infinity, alignment: .leading)
			
			Image("Card1")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 210)
			
		}
		.padding(.top, 20)
		.padding(.horizontal, 20)
		
		.frame(width: 275, height: 275)
		.background(Color("card2"))
		.cornerRadius(30)
		.shadow(color: Color("card2").opacity(0.3), radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
	}
}
