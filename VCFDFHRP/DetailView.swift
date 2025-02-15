//
//  DetailView.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI

struct DetailView: View {
    let pin: PinModel

    var body: some View {
        VStack {
            Text(pin.title)
                .font(.largeTitle)
                .padding()

            Text("Latitude: \(pin.location.y)")
            Text("Longitude: \(pin.location.x)")

            Spacer()
        }
        .navigationTitle(pin.title)
    }
}
