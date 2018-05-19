//
//  ViewController.swift
//  Carousel
//
//  Created by Rohit Saini on 16/01/18.
//  Copyright © 2018 SainiSaab. All rights reserved.
//

import UIKit
import Foundation
var headerLabel = UILabel()
class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    let imageArr = [#imageLiteral(resourceName: "Hayat1"),#imageLiteral(resourceName: "Hayat2"),#imageLiteral(resourceName: "Kate"),#imageLiteral(resourceName: "Hayat3"),#imageLiteral(resourceName: "Hayat4")]
    @IBOutlet weak var collectionView: UICollectionViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CardCell
        cell.image.image = imageArr[indexPath.row]
        cell.CardView.layer.cornerRadius = 20
        cell.CardView.layer.masksToBounds = true
        cell.inviteButton.layer.cornerRadius = 5
        cell.inviteButton.layer.masksToBounds = true
        cell.image.getBiggerAnim()
        
         return cell
    }
    
}

extension UIView {
    func getBiggerAnim() {
        UIView.animate(withDuration: 0.6 , animations: {
            self.transform = CGAffineTransform(scaleX: 0.6, y: 0.1)
        },completion: { finish in
            UIView.animate(withDuration: 0.6){
                self.transform = CGAffineTransform.identity
            }
        })
    }
}

//extension String {
//    var stringWidth: CGFloat {
//        let constraintRect = CGSize(width: UIScreen.main.bounds.width, height: .greatestFiniteMagnitude)
//        let boundingBox = self.trimmingCharacters(in: .whitespacesAndNewlines).boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)], context: nil)
//        return boundingBox.width
//    }
//    
//    var stringHeight: CGFloat {
//        let constraintRect = CGSize(width: UIScreen.main.bounds.width, height: .greatestFiniteMagnitude)
//        let boundingBox = self.trimmingCharacters(in: .whitespacesAndNewlines).boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)], context: nil)
//        return boundingBox.height
//    }
//}
//
