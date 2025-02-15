//
//  MapScreenView.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI
import ArcGIS

struct MapViewScreen: View {
  
    @State private var viewModel = MapViewModel()

    var body: some View {
        MapView(map: viewModel.map, graphicsOverlays: [viewModel.graphicsOverlay])
                .navigationTitle("Ventura Map")
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(isPresented: Binding(
                    get: { viewModel.selectedPin != nil },
                    set: { if !$0 { viewModel.selectedPin = nil } }
                )) {
                    if let pin = viewModel.selectedPin {
                        DetailView(pin: pin)
                    }
                }
        }
}
