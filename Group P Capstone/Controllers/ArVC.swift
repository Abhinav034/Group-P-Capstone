//
//  ViewController.swift
//  Group P Capstone
//
//  Created by Abhinav Bhardwaj on 2020-04-08.
//  Copyright © 2020 Abhinav Bhardwaj. All rights reserved.
//

import UIKit
import ARKit

class ArVC: UIViewController {
    
    
    @IBOutlet var sceneView: ARSCNView!
     let configuration = ARWorldTrackingConfiguration()
    var nodeName:String?
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.sceneView.autoenablesDefaultLighting = true
        self.sceneView.session.run(configuration)
              self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
       
        let node = SCNScene(named: "art.scnassets/\(nodeName!).scn")
        let childNode1 = node?.rootNode.childNode(withName: "\(nodeName!)", recursively: true)
        childNode1?.position = SCNVector3(0,0,-2)
        self.sceneView.scene.rootNode.addChildNode(childNode1!)
        
       
    }
}
