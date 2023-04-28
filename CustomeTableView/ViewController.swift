//
//  ViewController.swift
//  CustomeTableView
//
//  Created by Chinara on 4/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var furnitureTableView: UITableView!
    
    var mebels: [Mebel] = [
        Mebel(image: "photo1", label1: "Furnuture", label2: "Beautiful item", image2: "photo-1", price: "$240", roomType: "Living hall, desktop", color: "Gray", dimension: "500 x 1200"),
        Mebel(image: "photo2", label1: "Kitchenware", label2: "Home appliance", image2: "photo-2", price: "$785", roomType: "Kitchen, office", color: "Light gray with yellow details", dimension: "100 x 150"),
        Mebel(image: "photo3", label1: "Desktop", label2: "Study appliance", image2: "photo-3", price: "$936", roomType: "Living room, office", color: "White and beige colors", dimension: "300 x 450")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        furnitureTableView.dataSource = self
        furnitureTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mebels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mebel = mebels[indexPath.row]
        let cell = furnitureTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FurnitureTableViewCell
        cell.furnitureImageView.image = UIImage(named: mebel.image)
        cell.label1.text = mebel.label1
        cell.label2.text = mebel.label2
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        vc.meb = mebels[indexPath.row]
    }
}


struct Mebel {
    var image: String
    var label1: String
    var label2: String
    var image2: String
    var price: String
    var roomType: String
    var color: String
    var dimension: String
}
