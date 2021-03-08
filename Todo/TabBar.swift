//
//  TabBar.swift
//  Todo
//
//  Created by Camiel Koomen on 08/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
		TabView {
			Home().tabItem {
				Image(systemName: "play.circle.fill")
				Text("Home")
			}
			ContentView().tabItem{
				Image(systemName: "rectangle.stack.fill")
				Text("Certificates")
			}
		}
		.edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			TabBar().previewDevice("iPhone 12 mini")
			TabBar().previewDevice("iPhone 8")
		}
    }
}
