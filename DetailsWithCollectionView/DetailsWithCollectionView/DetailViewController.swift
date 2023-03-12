//
//  DetailViewController.swift
//  DetailsWithCollectionView
//
//  Created by Mac on 23/02/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dImage: UIImageView!
    var strLabel = ""
    var img = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        dImage.image = img
        label.text = strLabel
        dImage.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    

    
}
