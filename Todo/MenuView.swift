//
//  MenuView.swift
//  Todo
//
//  Created by Camiel Koomen on 11/02/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
		VStack {
			Spacer()
			
			VStack (spacing: 16){
				Text("Camiel - 50% complete")
					.font(.caption)
				
				Color.white
					.frame(width: 38, height: 6, alignment: .leading)
					.cornerRadius(3.0)
					.frame(width: 130, height: 6, alignment: .leading)
					.background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
					.cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
					.padding()
					.frame(width: 150, height: 24 )
					.background(Color.black.opacity(0.1))
					.cornerRadius(12)
				
				MenuRow(title: "Account", icon: "gear")
				MenuRow(title: "Billing", icon: "creditcard")
				MenuRow(title: "Sign out", icon: "person.crop.circle")
			}
			.frame(maxWidth: .infinity)
			.frame(height: 300)
			.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 0.9960784314, alpha: 1)), Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1))]), startPoint: .top, endPoint: .bottom))
				.clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
			.shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
			.padding(.horizontal, 30)
			.overlay(
				Image("Avatar")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
					.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
					.offset(y: -150)
			)
		}
		.padding(.bottom, 30)
		
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
	var title: String
	var icon: String
	
	var body: some View {
		HStack (spacing: 16) {
			Image(systemName: icon)
				.foregroundColor(Color("card2"))
				.font(.system(size: 20, weight: .light))
				.imageScale(.large)
				.frame(width: 32, height: 32, alignment: .center)
			Text(title)
				.font(.system(size: 20, weight: .bold, design: .rounded))
				.frame(width: 120, alignment: .leading)
		}
	}
}
