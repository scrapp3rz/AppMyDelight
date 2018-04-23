//
//  CameraCell.swift
//  AppMyDelight
//
//  Created by vincent portier on 22/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit
import AVFoundation


let CAMERA_CELL = "CameraCell"

class CameraCell: UICollectionViewCell {

    @IBOutlet weak var View_Camera: UIView!
    @IBOutlet weak var Flash_Button: UIButton!
    @IBOutlet weak var Rotation_Button: UIButton!
    @IBOutlet weak var Take_Photo: UIButton!
    
    
    var captureSession: AVCaptureSession?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    var captureOutput: AVCapturePhotoOutput?
    var position = AVCaptureDevice.Position.front
    var reglages = AVCapturePhotoSettings()
    var flashStatus = FlashStatus.off
    var controller: PhotoController?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func setupCamera(controller: PhotoController) {
        self.controller = controller
        self.Flash_Button.isHidden = true
        videoPreviewLayer?.removeFromSuperlayer()
        
        if let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: position) {
            if camera.hasFlash {
                Flash_Button.isHidden = false
            }
            do {
                let input = try AVCaptureDeviceInput(device: camera)
                captureSession = AVCaptureSession()
                if (captureSession?.canAddInput(input))! {
                    captureSession?.addInput(input)
                }
                captureOutput = AVCapturePhotoOutput()
                if (captureSession?.canAddOutput(captureOutput!))! {
                    captureSession?.addOutput(captureOutput!)
                }
                videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
                videoPreviewLayer?.videoGravity = .resizeAspectFill
                videoPreviewLayer?.frame = View_Camera.bounds
                View_Camera.layer.addSublayer(videoPreviewLayer!)
                captureSession?.startRunning()
            } catch {
                print("Une erreur est survenue")

            }
        }
        
    }
    
    
    
    
    @IBAction func Flash_Button_Action(_ sender: Any) {
    }
    
    @IBAction func Rotation_Button_Action(_ sender: Any) {
        if position = .front {
            position = .back
        } else {
            position = .front
        }
        setupCamera(controller: controller)
    }
    
    @IBAction func Take_Photo_Action(_ sender: Any) {
    }
    
    
}
