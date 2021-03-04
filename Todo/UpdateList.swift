//
//  UpdateList.swift
//  Todo
//
//  Created by Camiel Koomen on 04/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
		NavigationView {
			List(updateDate) { update in
				NavigationLink(destination: Text(update.Text)) {
					Text("ShiftUI")
				}
			}
			.navigationBarTitle(Text("Updates"))
		}
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}

struct Update: Identifiable {
	var id = UUID()
	var image: String
	var title: String
	var Text: String
	var date: String
}

let updateDate = [
	Update(image: "Card1", title: "SwiftUI", Text: "text", date: "jan1")

]
//let updateData = [
//	Update(image: "Card1", title: "SwiftUI Advanced", text: "Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.", date: "JAN 1"),
//	Update(image: "Card2", title: "Webflow", text: "Design and animate a high converting landing page with advanced interactions, payments and CMS", date: "OCT 17"),
//	Update(image: "Card3", title: "ProtoPie", text: "Quickly prototype advanced animations and interactions for mobile and Web.", date: "AUG 27"),
//	Update(image: "Card4", title: "SwiftUI", text: "Learn how to code custom UIs, animations, gestures and components in Xcode 11", date: "JUNE 26"),
//	Update(image: "Card5", title: "Framer Playground", text: "Create powerful animations and interactions with the Framer X code editor", date: "JUN 11")
//]
