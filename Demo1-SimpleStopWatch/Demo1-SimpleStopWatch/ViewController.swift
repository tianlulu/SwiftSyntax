//
//  ViewController.swift
//  Demo1-SimpleStopWatch
//
//  Created by lushuishasha on 16/5/9.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var pauseBtn: UIButton!
   
    @IBOutlet weak var timeLabel: UILabel!
    
    var counter = 0.0
    var timer = NSTimer()
    var isPlaying = false
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    override func viewDidLoad() {
     self.timeLabel.text = String(counter)
     super.viewDidLoad()
    }
  
    
    @IBAction func resetButtonDidTouch(sender: AnyObject) {
        timer.invalidate()
        isPlaying = false
        counter = 0
        timeLabel.text = String(counter)
        playBtn.enabled = true
        pauseBtn.enabled = true
    }
    
    
    @IBAction func pauseButtonDidTouch(sender: AnyObject) {
        playBtn.enabled = true
        pauseBtn.enabled = false
        timer.invalidate()
        isPlaying = false
    }
    
    
    
    
    @IBAction func playButtonDidTouch(sender: AnyObject) {
        if isPlaying {
            return
        }
        pauseBtn.enabled = true
        playBtn.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("UpdateTimer"), userInfo: nil, repeats: true)
        isPlaying = true
    }
    

    func UpdateTimer()  {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f",counter)
    }

}

