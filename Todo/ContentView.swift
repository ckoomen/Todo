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
		VStack(alignment: .center){
				Text("Hello, Wolrd")
					.font(.title)
					.foregroundColor(Color("accent"))
					.fontWeight(.semibold)
			Text("certificate")
			}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
