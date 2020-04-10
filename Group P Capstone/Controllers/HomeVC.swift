//
//  HomeVC.swift
//  Group P Capstone
//
//  Created by Abhinav Bhardwaj on 2020-04-08.
//  Copyright © 2020 Abhinav Bhardwaj. All rights reserved.
//

import UIKit

class HomeVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var savedImgBtn: UIButton!
    
    @IBOutlet weak var wishBtn: UIButton!
    let items:[String] = ["table" , "chair" , "couch"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        wishBtn.layer.cornerRadius = 10
        savedImgBtn.layer.cornerRadius = 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GridViewCell
        
        cell.ImageViewCell.image = UIImage(named: items[indexPath.row])
        
        return cell
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = view.frame.size.height
        let width = view.frame.size.width
       
        return CGSize(width: width * 0.47, height: height * 0.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedItemName = items[indexPath.row]
        
        let destVC = storyboard?.instantiateViewController(identifier: "objectDescVC") as! ObjectDescVC
        
        destVC.imageName = selectedItemName
        navigationController?.pushViewController(destVC, animated: true)
        
    }
        
    
    @IBAction func savedImgPressed(_ sender: UIButton) {
       //saved Images screen
    }
    
    @IBAction func wishlistPressed(_ sender: UIButton) {
        //wishlist screen
    }
}
