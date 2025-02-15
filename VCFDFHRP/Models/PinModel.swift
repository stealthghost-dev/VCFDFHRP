//
//  PinModel.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI
import ArcGIS

struct PinModel: Identifiable {
    let id = UUID()
    let title: String
    let location: Point
}
