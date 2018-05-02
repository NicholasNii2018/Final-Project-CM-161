//
//  ViewController.swift
//  Project 2
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Nicholas Nii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var myFavoriteRestaurants = ["BLT Steak","Marukame Udon","California Pizza Kitchen","The Cheesecake Factory","Roy's","Wolfgang's Steakhouse"]
    @IBOutlet weak var firstTabLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var restaurantImageData = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
    restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFavoriteRestaurants.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFavoriteRestaurants[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
}

