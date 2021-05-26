//
//  ViewController.swift
//  Video Player
//
//  Created by Vijay Bhaskar on 26/05/21.
//
// NOTE : Dont forget to add App Transport Security Settings in Info.Plist

import UIKit
// 1
import AVKit
import AVFoundation

//2 ADD AVPlayerViewControllerDelegate protocol to class
class ViewController: UIViewController, AVPlayerViewControllerDelegate {
    
    let playerController = AVPlayerViewController()

    @IBOutlet weak var startBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_start(_ sender: AnyObject) {
        
        // 3 check url is correct or not
        guard let url = URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") else { return  }
        
        // 4. initialyze AVPlayer
        let player = AVPlayer(url: url)
        
        // 5. Add player to playerController
        playerController.player = player
        playerController.allowsPictureInPicturePlayback = true
        
        //6 add delegate
        playerController.delegate = self
        
        // 7 play
        playerController.player?.play()
        
        // 8 present player controller
        self.present(playerController, animated: true, completion: nil)
        
    }
    


}

