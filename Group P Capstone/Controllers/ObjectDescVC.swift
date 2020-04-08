//
//  ObjectDescVC.swift
//  Group P Capstone
//
//  Created by Abhinav Bhardwaj on 2020-04-08.
//  Copyright © 2020 Abhinav Bhardwaj. All rights reserved.
//

import UIKit

class ObjectDescVC: UIViewController {

    @IBOutlet weak var ObjectImageView: UIImageView!
    
    
    @IBOutlet weak var descText: UITextView!
    
    
    @IBOutlet weak var tryBtn: UIButton!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var likeBtn: UIButton!
    
    var imageName:String?
    var liked:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        ObjectImageView.image = UIImage(named: imageName!)
    }
    

    @IBAction func tryButtonPressed(_ sender: UIButton) {
        
        let destVC = storyboard?.instantiateViewController(identifier: "arVC") as! ArVC
        destVC.nodeName = imageName
        navigationController?.pushViewController(destVC, animated: true)
        
        print(imageName!)
        
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
        
        if(!liked){
            likeBtn.setImage(UIImage(systemName: "hand.thumbsup.fill"), for: .normal)
            likeBtn.tintColor = #colorLiteral(red: 0, green: 0.5185523033, blue: 1, alpha: 1)
            liked = true
        }
        
       else if(liked){
            likeBtn.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
            likeBtn.tintColor = #colorLiteral(red: 0, green: 0.5185523033, blue: 1, alpha: 1)
            liked = false
        }
    
    }
    
}
