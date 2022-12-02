//
//  UberMapViewRepresentable.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/23/22.
//

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {
    
    let mapView = MKMapView()
    let locationManager = LocationManager.shared
    @Binding var mapState: MapViewState
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("DEBUG: mapState: \(mapState)")
        
        switch mapState {
        case .noInput:
            context.coordinator.clearMapViewAndRecenter()
            break
        case .searchingForLocation:
            break
        case .locationSelected:
            if let coordinate = locationViewModel.selectedUberLocation {
                context.coordinator.addAndSelectAnnotation(withCoordinate: coordinate.coordinate)
                context.coordinator.configurePolyline(wtihDestinationCoordinate: coordinate.coordinate)
            }
            break
        }
    }
    
    func makeCoordinator() -> MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension UberMapViewRepresentable {
     
    class MapCoordinator: NSObject, MKMapViewDelegate {
        
        // MARK: - Properties
        
        let parent: UberMapViewRepresentable
        var userLocationCoordinante: CLLocationCoordinate2D?
        var currentRegion: MKCoordinateRegion?
        
        // MARK: - Lifecycle
        
        init(parent: UberMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
        // MARK: - MkMapViewDelegate
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            self.userLocationCoordinante = userLocation.coordinate
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            
            self.currentRegion = region
            
            parent.mapView.setRegion(region, animated: true)
        }
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let polyline = MKPolylineRenderer(overlay: overlay)
            polyline.strokeColor = .systemPink
            polyline.lineWidth = 6
            return polyline
        }
        
        // MARK: - Helpers
        
        func addAndSelectAnnotation(withCoordinate coordinate: CLLocationCoordinate2D) {
            parent.mapView.removeAnnotations(parent.mapView.annotations)
            
            let anno = MKPointAnnotation()
            anno.coordinate = coordinate
            self.parent.mapView.addAnnotation(anno)
            self.parent.mapView.selectAnnotation(anno, animated: true)
        }
        
        func configurePolyline(wtihDestinationCoordinate coordinate: CLLocationCoordinate2D) {
            guard let userLocationCoordinante = self.userLocationCoordinante else { return }
            getDestinationRoute(from: userLocationCoordinante, to: coordinate) { route in
                self.parent.mapView.addOverlay(route.polyline)
                let rect = self.parent.mapView.mapRectThatFits(route.polyline.boundingMapRect, edgePadding: .init(top: 64, left: 32, bottom: 500, right: 32))
                self.parent.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
            }
        }
        
        func getDestinationRoute(from userLocation: CLLocationCoordinate2D, to destination: CLLocationCoordinate2D, completion: @escaping(MKRoute) -> Void) {
            let userPlacemark = MKPlacemark(coordinate: userLocation)
            let destPlacemark = MKPlacemark(coordinate: destination)
            let request = MKDirections.Request()
            request.source = MKMapItem(placemark: userPlacemark)
            request.destination = MKMapItem(placemark: destPlacemark)
            let directions = MKDirections(request: request)
            
            directions.calculate { response, error in
                if let error = error {
                    print("DEBUG: Failed to get directions: \(error.localizedDescription)")
                    return
                }
                
                guard let route = response?.routes.first else { return }
                completion(route)
            }
        }
        
        func clearMapViewAndRecenter() {
            print("DEBUG: Cleared")
            parent.mapView.removeAnnotations(parent.mapView.annotations)
            self.parent.mapView.removeOverlays(parent.mapView.overlays)
            
            if let region = currentRegion {
                parent.mapView.setRegion(region, animated: true)
            }
        }
    }
}
