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
				HStack(spacing: 20) {
					ForEach(sectionData) { item in
						GeometryReader { geometry in
							SectionView(section: item)
								.rotation3DEffect(Angle(degrees:
											Double(geometry.frame(in: .global).minX - 30) / -20
								), axis: (x: 0.0, y: 10.0, z: 0.0))
								
						}
						.frame(width: 275, height: 275)
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
	var section:Section
	
	var body: some View {
		VStack {
			HStack (alignment: .top){
				Text(section.title)
					.font(.system(size: 24, weight: .bold))
					.frame(width: 160, alignment: .leading)
				Spacer()
				Image(section.logo)
			}
			Text(section.text.uppercased())
				.frame(maxWidth: .infinity, alignment: .leading)
			
			section.image
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 210)
			
		}
		.padding(.top, 20)
		.padding(.horizontal, 20)
		
		.frame(width: 275, height: 275)
		.background(section.color)
		.cornerRadius(30)
		.shadow(color: section.color.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
	}
}

struct Section: Identifiable {
	var id = UUID()
	var title: String
	var text: String
	var logo: String
	var image: Image
	var color: Color
}

let sectionData = [
	Section(title: "Prototype designs in SwiftUI", text: "18 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1-Dark")), color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))),
	Section(title: "Build a SwisftUI app", text: "18 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1-Dark")), color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))),
Section(title: "Advanced SwiftUI design", text: "18 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1-Dark")), color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))),
Section(title: "Testing Swift", text: "18 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1-Dark")), color: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))]


