//
//  GoogleMapsViewController.swift
//  HowToMakeTableview
//
//  Created by Donlaya on 16/10/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation


class GoogleMapsViewController: UIViewController {
    
    //13.791676 100.5586388 home
    //13.779899 100.560307 utcc
    
    var mapView: GMSMapView!
    //    var myMarker: GMSMarker?
    //    var imagView: UIImageView?
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        let camera = GMSCameraPosition.camera(withLatitude: (self.locationManager.location?.coordinate.latitude) ?? 0, longitude: (self.locationManager.location?.coordinate.longitude) ?? 0, zoom: 16.0)
        mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.mapType = .normal
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        mapView.settings.indoorPicker = true
        mapView.settings.compassButton = true
        mapView.isIndoorEnabled = true
        mapView.isMyLocationEnabled = true
        view = mapView
        
        goCollage()
        
        goEat()
    }
    
    func goCollage() {
        
        let pin = GMSMarker()
        pin.position = CLLocationCoordinate2D(latitude: 13.779899, longitude: 100.560307)
        pin.title = "UTTC"
        pin.snippet = "Ton University"
        pin.icon = GMSMarker.markerImage(with: .green)
        pin.map = mapView
    }
    
    func goEat() {
        
        let pin = GMSMarker()
        pin.position = CLLocationCoordinate2D(latitude: 13.791892, longitude: 100.560836)
        pin.title = "Gold Orchid Hotel"
        pin.snippet = "ซูชิบุฟเฟ่ต์"
        pin.icon = GMSMarker.markerImage(with: .magenta)
        pin.map = mapView
    }
    
    
}

extension GoogleMapsViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let lat = self.locationManager.location?.coordinate.latitude ?? 0
        print("*** ละติจูด\(lat)***") //13.791676
        let long = self.locationManager.location?.coordinate.longitude ?? 0
        print("*** ลองติจูด\(long)***") //100.558639
    }
    
    
}
