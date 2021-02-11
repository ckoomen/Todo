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
		VStack (spacing: 16){
			MenuRow(title: "Account", icon: "gear")
			MenuRow(title: "Billing", icon: "creditcard")
			MenuRow(title: "third", icon: "scribble")
		}
		.frame(maxWidth: .infinity)
		.frame(height: 300)
		background(Color.white)
			.clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
			.shadow(radius: 30 )
			.padding(.horizontal, 30)
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
				.font(.system(size: 20, weight: .light))
				.imageScale(.large)
				.frame(width: 32, height: 32, alignment: .center)
			Text(title)
				.font(.system(size: 20, weight: .bold, design: .rounded))
				.frame(width: 120, alignment: .leading)
		}
	}
}
