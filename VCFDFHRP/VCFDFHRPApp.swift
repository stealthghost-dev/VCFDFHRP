//
//  VCFDFHRPApp.swift
//  VCFDFHRP
//
//  Created by Chavez, Joe on 2/14/25.
//

import SwiftUI
import ArcGIS

@main
struct VCFDFHRPApp: App {
    init() {
        
        // License the app with the supplied license string.
        guard let licenseKey = LicenseKey("runtimelite,1000,rud2924471472,none,HC5X0H4AH4A4LMZ59159") else { return }
        do {
            let result = try ArcGISEnvironment.setLicense(with: licenseKey)
            print("License Result : \(result.licenseStatus)")
        } catch {
            print(error)
        }
        
        
        ArcGISEnvironment.apiKey = APIKey("AAPTxy8BH1VEsoebNVZXo8HurDXuyEUMTjYHCQAi-1-mQ8GtC4fQ2yeVgs3W4loPQGBSuvDOT9EHpTqZq-VGTa8VPd-wldq65nwOuk4SsB3dc-UsEG4w5UEJmwCy98OAEVAy_fcxV1SkHtCcno2-pyZ_Zj-39NCVRFPDoy6UlC7Rjye6JtFaCZoRv7PN1UcLX16_XgdDmaUPCibmEcesNMsBFn0Tm6Xb5LMSwh-kuHLnrZA.AT1_WAjjOsBL")
        
        
    }
    var body: some SwiftUI.Scene {
        WindowGroup {
            ContentView()
        }
    }
}
