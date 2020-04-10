//
//  TestVC.swift
//  Group P Capstone
//
//  Created by Abhinav Bhardwaj on 2020-04-10.
//  Copyright © 2020 Abhinav Bhardwaj. All rights reserved.
//

import UIKit

class TestVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var capturedImage:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = capturedImage
      
    }
    

  

}
