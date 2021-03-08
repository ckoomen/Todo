//
//  UpdateStore.swift
//  Todo
//
//  Created by Camiel Koomen on 08/03/2021.
//  Copyright © 2021 Camiel Koomen. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
	@Published var updates: [Update] = updateData
}
