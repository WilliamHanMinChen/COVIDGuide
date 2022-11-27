//
//  ViewController.swift
//  COVIDGuide
//
//  Created by William Chen on 2022/11/25.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController, ARSessionDelegate {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configuration for tracking images and objects
        let configuration = ARWorldTrackingConfiguration()
        
        
        //Loads all the images its going to look for
        let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)!
        
        
        //Provide it to the configuration
        configuration.detectionImages = referenceImages
        
        //Give it a maximum number it can track at the same time
        configuration.maximumNumberOfTrackedImages = 10
        
        // Set ARView delegate so we can define delegate methods in this controller
        arView.session.delegate = self
        
        // Forgo automatic configuration to do it manually instead
        arView.automaticallyConfigureSession = false
        
        // Disable any unneeded rendering options
        arView.renderOptions = [.disableCameraGrain, .disableHDR, .disableMotionBlur, .disableDepthOfField, .disableFaceMesh, .disablePersonOcclusion, .disableGroundingShadows, .disableAREnvironmentLighting]
        
        //Run the session
        arView.session.run(configuration)
        
    }
    
    
    
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
       //Loop through the anchors added
        for anchor in anchors {
            //If it is an image anchor
            if let imageAnchor = anchor as? ARImageAnchor{
                
                switch imageAnchor.name{
                case "1":
                    print("Found type 1")
                case "RATTEST":
                    print("Found RAT Test")
                default:
                    print("Found another case")
                }
                
                
            }
        }
        
    }
    
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        //Loop through the updated anchors
        for anchor in anchors {
            //If it is an image anchor
            if let imageAnchor = anchor as? ARImageAnchor{
                
                switch imageAnchor.name{
                case "1":
                    print("Found type 1")
                case "RATTEST":
                    print("Found RAT Test")
                default:
                    print("Found another case")
                }
                
                
            }
        }
    }
    
    
    
    
    
    
}
