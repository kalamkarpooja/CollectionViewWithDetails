//
//  ViewController.swift
//  DetailsWithCollectionView
//
//  Created by Mac on 23/02/23.
//

import UIKit

class ViewController: UIViewController {
   var detailVC : DetailViewController = DetailViewController()
    @IBOutlet weak var dressCollectionView: UICollectionView!
    var images = ["jeans top","Jeans1","jeans2","Jeans3","kurta1","kurta2","kurta3","long dress","shorts1","shorts2","shorts3","TrackPants1","TrackPants2","Tshirt3"]
     var name = ["top","jogger","jeans","jogger jeans","white kurta","gray kurta","kurta with s","long dress","shorts","short","short","TrackPants","TrackPant","Tshirt"]
    override func viewDidLoad() {
        super.viewDidLoad()
        dressCollectionView.dataSource = self
        dressCollectionView.delegate = self
    }
}
extension ViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.dressCollectionView.dequeueReusableCell(withReuseIdentifier: "DressCollectionViewCell", for: indexPath) as! DressCollectionViewCell
        cell.image.image = UIImage(named: images[indexPath.row])
        cell.image.isHighlighted = .random()
        cell.nameLabel.text = name[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.layer.borderColor = UIColor.red.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        CGSize(width: 200/2, height: 195)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        detailVC  = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.img = UIImage(named: images[indexPath.row])!
        detailVC.strLabel = name[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
}
