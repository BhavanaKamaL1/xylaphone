//
//  ViewController.swift
//  xylaphone
//
//  Created by DDUKK on 03/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    var sound = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressNote(_ sender: UIButton) {

    
        let value = sender.titleLabel?.text
        print("\(value!)")
        
        switch(value){
            
        case "1" : playSound(chooseSound: "note1")
        case "2" : playSound(chooseSound: "note2")
        case "3" : playSound(chooseSound: "note3")
        case "4" : playSound(chooseSound: "note4")
        case "5" : playSound(chooseSound: "note5")
        case "6" : playSound(chooseSound: "note6")
        case "7" : playSound(chooseSound: "note7")
            
            
        default : break
        }
     
    }
    func playSound(chooseSound: String) {
        print("\(chooseSound)")
        guard let url = Bundle.main.url(forResource: chooseSound, withExtension: "wav")
        else{
            print("no")
            return
        }
        do{
            print("playing")
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }
        catch{
            
        }
        
    }
}

