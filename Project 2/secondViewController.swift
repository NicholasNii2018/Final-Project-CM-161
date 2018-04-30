//
//  secondViewController.swift
//  Project 2
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Nicholas Nii. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class secondViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.279401, longitude: -157.828794)
    let regionRadius: CLLocationDistance = 1000
    @IBOutlet weak var secondTabLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    centerMapOnLocation(location: initialLocation)
    let restaurantOne = Restaurant(title: "BLT Steak", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.279239, longitude: -157.832329))
        mapView.addAnnotation(restaurantOne)
    let restaurantTwo = Restaurant(title: "Marukame Udon", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.279517, longitude: -157.825985))
        mapView.addAnnotation(restaurantTwo)
    let restaurantThree = Restaurant(title: "California Pizza Kitchen", type: "Pizza", coordinate: CLLocationCoordinate2D(latitude: 21.278482, longitude: -157.827793))
        mapView.addAnnotation(restaurantThree)
    let restaurantFour = Restaurant(title: "The Cheesecake Factory", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.277557, longitude: -157.827856))
        mapView.addAnnotation(restaurantFour)
    let restaurantFive = Restaurant(title: "Roy's", type: "Hawaiian fusion", coordinate: CLLocationCoordinate2D(latitude: 21.278584, longitude: -157.831736))
        mapView.addAnnotation(restaurantFive)
    let restaurantSix = Restaurant(title: "Wolfgang's Steakhouse", type: "Steak House", coordinate: CLLocationCoordinate2D(latitude: 21.278303, longitude: -157.828441))
        mapView.addAnnotation(restaurantSix)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centerMapOnLocation(location: CLLocation){ let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
