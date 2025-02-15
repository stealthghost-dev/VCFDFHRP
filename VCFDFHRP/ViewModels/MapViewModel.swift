//
//  MapViewModel.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI
import ArcGIS

@Observable
class MapViewModel {
    let map: Map
    let graphicsOverlay: GraphicsOverlay
    var pins: [PinModel]
    
    var selectedPin: PinModel?
    
    init() {
        
        // ✅ Initialize Map
        // Create a new ArcGIS basemap and apply an access token.
        let basemap = Basemap(style: .arcGISStreets)
//        basemap.apiKey = APIKey("AAPTxy8BH1VEsoebNVZXo8HurDXuyEUMTjYHCQAi-1-mQ8GtC4fQ2yeVgs3W4loPQGBS89p6ynX-PdXu3wROJN8HntQSCPD2hwzgTzzgVAy5HqweWOL04kBMB0bfXEFMe67YY_py4_7oIs-uXKZVYguyd-mKOeh9egidXJl3Xe-3JnYCJyoQWsAm8m6TuEjKa6O6-mlNb7Q3QmYwHVGeP_5sM0PXtGG_PJtLt3i3JSL_huE.AT1_ZSDS7DhN")

        // Create a new map with the basemap.
        map = Map(basemap: basemap)

   
        
        // ✅ Create GraphicsOverlay
        graphicsOverlay = GraphicsOverlay()
        
        // ✅ Define Pins
        pins = [
            PinModel(title: "Ventura Beach", location: Point(x: -119.2911, y: 34.2805, spatialReference: .wgs84)),
            PinModel(title: "Downtown Ventura", location: Point(x: -119.2920, y: 34.2746, spatialReference: .wgs84)),
            PinModel(title: "Channel Islands Harbor", location: Point(x: -119.2170, y: 34.1706, spatialReference: .wgs84)),
            PinModel(title: "Oxnard State Beach", location: Point(x: -119.2296, y: 34.1778, spatialReference: .wgs84)),
            PinModel(title: "Ventura Pier", location: Point(x: -119.2900, y: 34.2725, spatialReference: .wgs84))
        ]
        
        // ✅ Set Initial View
        setInitialExtent()
        
        // ✅ Add Pins to Overlay
        addPins()
    }
    
    func addPins() {
        for pin in pins {
            let symbol = SimpleMarkerSymbol(style: .circle, color: .red, size: 10)
            let graphic = Graphic(geometry: pin.location, symbol: symbol)
            graphicsOverlay.addGraphic(graphic)
        }
    }
    
    func setInitialExtent() {
        let venturaExtent = Envelope(
            min: Point(x: -119.5, y: 34.0, spatialReference: .wgs84),
            max: Point(x: -119.0, y: 34.5, spatialReference: .wgs84)
        )
        map.initialViewpoint = Viewpoint(boundingGeometry: venturaExtent)
    }
    
}



