//
//  ContentView.swift
//  Todo
//
//  Created by Camiel Koomen on 22/03/2020.
//  Copyright © 2020 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			VStack{
				Spacer()
			}
			.frame(width: 300, height: 220)
			.background(Color("background3"))
			.cornerRadius(20)
			.shadow(radius: 20 )
			.offset(x:0, y: -20)
			
			VStack {
				HStack {
					VStack(alignment: .leading){
								Text("Hello, Wolrd")
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
			.frame(width: 340.0, height: 220.0)
			.background(Color("background2"))
			.cornerRadius(20)
			.shadow(radius: 20)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
