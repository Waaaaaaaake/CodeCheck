//
//  ViewController.swift
//  Weather2
//
//  Created by Станислав Лукьянов on 14.01.2020.
//  Copyright © 2020 Станислав Лукьянов. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var search_bar: UISearchBar!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2DMake(45.4643, 9.18951)
        let annotation = MKPointAnnotation()
        let span = MKCoordinateSpan.init(latitudeDelta: 1, longitudeDelta: 1)
        let region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
        annotation.coordinate = location
        annotation.title = "Milan"
        
        map.addAnnotation(annotation)
        let btnImage = UIImage(named: "Background.png")
        
        
    }


}

