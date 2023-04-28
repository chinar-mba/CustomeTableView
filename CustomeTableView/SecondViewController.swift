//
//  SecondViewController.swift
//  CustomeTableView
//
//  Created by Chinara on 4/28/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var roomType: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var dimension: UILabel!
    
    var meb: Mebel?
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: (meb?.image2)!)
        name.text = meb?.label1
        price.text = meb?.price
        roomType.text = meb?.roomType
        color.text = meb?.color
        dimension.text = meb?.dimension
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
