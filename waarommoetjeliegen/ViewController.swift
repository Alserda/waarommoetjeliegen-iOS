//
//  ViewController.swift
//  waarommoetjeliegen
//
//  Created by Peter Alserda on 17/02/16.
//  Copyright © 2016 Peter Alserda. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSoundButtonPressed(sender: AnyObject) {
        playSound(sender.tag)
    }
    
    
    func playSound(identifier: Int) {
        let audioSample = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(String(identifier), ofType: "mp3")!)
        print(audioSample)
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: audioSample)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            print("error")
        }
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

