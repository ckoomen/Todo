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
			Spacer()
			Image("Card1")
			.resizable()
			.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
		}
		.frame(width: 340.0, height: 220.0)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
