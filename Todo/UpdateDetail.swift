//
//  UpdateDetail.swift
//  Todo
//
//  Created by Camiel Koomen on 07/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
	var update: Update = updateData[2
	]
	
    var body: some View {
		List {
			VStack {
					Image(update.image)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(maxWidth: .infinity)
					Text(update.text)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
			.navigationBarTitle(update.title)
		}
		.listStyle(GroupedListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
