//
//  ViewController.swift
//  tapper
//
//  Created by Lewis Jones on 29/02/2016.
//  Copyright © 2016 Rodrigo Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables

    var maxTaps: Int = 0
    var currentTaps = 0
    
    //Outlets

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapLbl: UILabel!
    
    //Actions
    
    @IBAction func tapBtnPressed(sender: UIButton!) {
        currentTaps++
       updateTapsLbl()
        
      if isGameOver() {
            restartGame()
        
        }
        
    }
    @IBAction func playBtnPressed(sender: UIButton!) {
        
        if text.text != nil && text.text != "" {
            
            logo.hidden = true
            playBtn.hidden = true
            text.hidden = true
            
            tapBtn.hidden = false
            tapLbl.hidden = false
            
          maxTaps = Int(text.text!)!
            currentTaps = 0
            updateTapsLbl()

    }
    }
        func restartGame() {
            
            maxTaps = 0
            text.text = ""
            
            logo.hidden = false
            playBtn.hidden = false
            text.hidden = false
            
            tapBtn.hidden = true
            tapLbl.hidden = true
            
    }
    


        func isGameOver() -> Bool {
            if currentTaps >= maxTaps {
                return true
            } else {
                return false
            }
    
   }
func updateTapsLbl() {
    tapLbl.text = "\(currentTaps) Taps"
}


}