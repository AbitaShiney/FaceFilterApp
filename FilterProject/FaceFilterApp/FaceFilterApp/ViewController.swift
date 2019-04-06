//
//  ViewController.swift
//  FaceFilterApp
//
//  Created by Abita Shiney on 2019-04-06.
//  Copyright © 2019 Abita Shiney. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let config = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 1
        let configuration = ARFaceTrackingConfiguration()
        
        // 2
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 1
        guard ARFaceTrackingConfiguration.isSupported else {
            fatalError("Face tracking is not supported on this device")
        }
        sceneView.session.pause()
    }
    

}

