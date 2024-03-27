//
//  InsetMapView.swift
//  Africa
//
//  Created by Imron Reviady on 26/03/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - PROPERTIES
    
    @State private var region = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.437759),
            span: MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        )
    )
    
    // MARK: - BODY
    var body: some View {
        Map(position: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } //: NAVIGATION
                .padding(12),
                alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    
    }
}

// MARK: - PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
