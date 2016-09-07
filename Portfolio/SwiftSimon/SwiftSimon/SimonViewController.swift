//
//  SimonViewController.swift
//  SwiftSimon
//
//  Created by Tyler on 8/18/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

enum ButtonColor
{
    case red
    case green
    case blue
    case yellow
}

class SimonViewController: UIViewController
{
    var animator: UIDynamicAnimator!

    @IBOutlet weak var redSquare: ColoredButton!
    @IBOutlet weak var greenSquare: ColoredButton!
    @IBOutlet weak var blueSquare: ColoredButton!
    @IBOutlet weak var yellowSquare: ColoredButton!
    
    

    
    let randomSimonOptions = ["red", "blue", "green", "yellow"]
    
    var simonArray = [String]()
    var playerArray = [String]()
    
    var theIndex = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //redSquare = ColoredButton (frame: CGRect(x: 20, y: 50, width: 100, height: 100))
        redSquare.color = .red
        
        //greenSquare = ColoredButton (frame: CGRect(x: 125, y: 50, width: 100, height: 100))
        greenSquare.color = .green
        
        //blueSquare = ColoredButton (frame: CGRect(x: 20, y: 155, width: 100, height: 100))
        blueSquare.color = .blue
        
        //yellowSquare = ColoredButton //(frame: CGRect(x: 125, y: 155, width: 100, height: 100))
        yellowSquare.color = .yellow
        
        simonGoes()
        simonGoes()
        simonGoes()

        
     /* redSquare.backgroundColor = UIColor.red
        greenSquare.backgroundColor = UIColor.green
        blueSquare.backgroundColor = UIColor.blue
        yellowSquare.backgroundColor = UIColor.yellow
        
        
        view.addSubview(redSquare)
        view.addSubview(greenSquare)
        view.addSubview(blueSquare)
        view.addSubview(yellowSquare) */
        
        

        
    }

    func redAnimateButtonPress(_ button: ColoredButton)
    {
        let tempColor = redSquare.backgroundColor
        /*let audioName = button.title(for: .normal)!
                
                let audioFilePath = Bundle.main.path(forResource: audioName, ofType: "mp3")
                if audioFilePath != nil {
                    let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
                    do {
                        audioPlayer =  try AVAudioPlayer(contentsOf: audioFileUrl)
                    } catch let error1 as NSError {
                        print(error1)
                    }
                }
                
                
         
                
                audioPlayer.play()*/
        button.backgroundColor = UIColor.white
        UIView.animate(withDuration: 0.3)
        {
            button.backgroundColor = tempColor!
        }
    }
    
    func blueAnimateButtonPress(_ button: ColoredButton)
    {
        let tempColor = blueSquare.backgroundColor
        /*let audioName = button.title(for: .normal)!
                
                let audioFilePath = Bundle.main.path(forResource: audioName, ofType: "mp3")
                if audioFilePath != nil {
                    let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
                    do {
                        audioPlayer =  try AVAudioPlayer(contentsOf: audioFileUrl)
                    } catch let error1 as NSError {
                        print(error1)
                    }
                }
                
                
         
                
                audioPlayer.play()*/
        button.backgroundColor = UIColor.white
        UIView.animate(withDuration: 0.3)
        {
            button.backgroundColor = tempColor!
        }
    }
    
    func greenAnimateButtonPress(_ button: ColoredButton)
    {
        let tempColor = greenSquare.backgroundColor
        /*let audioName = button.title(for: .normal)!
                
                let audioFilePath = Bundle.main.path(forResource: audioName, ofType: "mp3")
                if audioFilePath != nil {
                    let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
                    do {
                        audioPlayer =  try AVAudioPlayer(contentsOf: audioFileUrl)
                    } catch let error1 as NSError {
                        print(error1)
                    }
                }
                
                
         
                
                audioPlayer.play()*/
        button.backgroundColor = UIColor.white
        UIView.animate(withDuration: 0.3)
        {
            button.backgroundColor = tempColor!
        }
    }
    
    func yellowAnimateButtonPress(_ button: ColoredButton)
    {
        let tempColor = yellowSquare.backgroundColor
        /*let audioName = button.title(for: .normal)!
                
                let audioFilePath = Bundle.main.path(forResource: audioName, ofType: "mp3")
                if audioFilePath != nil {
                    let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
                    do {
                        audioPlayer =  try AVAudioPlayer(contentsOf: audioFileUrl)
                    } catch let error1 as NSError {
                        print(error1)
                    }
                }
                
                
         
                
                audioPlayer.play()*/
        button.backgroundColor = UIColor.white
        UIView.animate(withDuration: 0.3)
        {
            button.backgroundColor = tempColor!
        }
    }

    func simonGoes()
    {
        let randomIndex = Int(arc4random_uniform(UInt32(randomSimonOptions.count)))
        print(randomSimonOptions[randomIndex])
        simonArray.append(randomSimonOptions[randomIndex])
        print(simonArray)
        
        playerGoes()
        
        //let simonNumber = arc4random() + 1
        //simonArray.append(Int(simonNumber))
        //print(simonArray)
    }

    func clearPlayerArray()
    {
    playerArray = []
    playerGoes()
    }
    
    func playerGoes()
    {
      
        
        /* while playerArray.count <= simonArray.count
        {
            playerGoes()
        }
        didPlayersLose() */
    }
    
    
    func didPlayersLose()
    {
        if playerArray[theIndex] == simonArray[theIndex]
        {
            
            print("so far so good")
        }
        else
        {
            /*let audioFilePath = Bundle.main.path(forResource: "loserSound", ofType: "mp3")
            if audioFilePath != nil {
                let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
                do {
                    audioPlayer =  try AVAudioPlayer(contentsOf: audioFileUrl)
                } catch let error1 as NSError {
                    print(error1)
                }
            }
            audioPlayer.play()*/
 
            //lastGameLabel.text = "Last Game \(scoreLabel.text!)"
            playerArray = []
            simonArray = []
            //simonButtonsArray = []
            
            theIndex = 0
         
            
            
            //speedMPHtimer.invalidate()
            
            
        }

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //All button functions were put together by Greg and I. 
    @IBAction func redButtonPressed(_ sender: UIButton)
    {
        redAnimateButtonPress(redSquare)
        playerArray.append("red")
        didPlayersLose()
        theIndex = theIndex + 1
        if playerArray.count == simonArray.count
        {
            simonGoes()
            theIndex = 0
        }
        print("Player's Stuff")
        print(playerGoes)
    }
    @IBAction func blueButtonPressed(_ sender: UIButton)
    {
        blueAnimateButtonPress(blueSquare)
        playerArray.append("blue")
        didPlayersLose()
        theIndex = theIndex + 1
        if playerArray.count == simonArray.count
        {
            simonGoes()
            theIndex = 0
        }
        print("Player's Stuff")
        print(playerGoes)
    }
    @IBAction func greenButtonPressed(_ sender: UIButton)
    {
        greenAnimateButtonPress(greenSquare)
        playerArray.append("green")
        didPlayersLose()
        theIndex = theIndex + 1
        if playerArray.count == simonArray.count
        {
            simonGoes()
            theIndex = 0
        }
        print("Player's Stuff")
        print(playerGoes)
        
    }
    @IBAction func yellowButtonPressed(_ sender: UIButton)
    {
        yellowAnimateButtonPress(yellowSquare)
        playerArray.append("yellow")
        didPlayersLose()
        theIndex = theIndex + 1
        if playerArray.count == simonArray.count
        {
            simonGoes()
            theIndex = 0
        }
        print("Player's Stuff")
        print(playerGoes)
    }
    
    
}


class ColoredButton: UIButton
{
    var color = ButtonColor.red {
        didSet {
            switch color {
            case .red:
                backgroundColor = UIColor(hue: 0/360, saturation: 100/100, brightness: 100/100, alpha: 1)
            case .green:
                backgroundColor = UIColor(hue: 105/360, saturation: 100/100, brightness: 100/100, alpha: 1)
            case .blue:
                backgroundColor = UIColor(hue: 240/360 , saturation: 100/100, brightness: 100/100, alpha: 1)
            case .yellow:
                backgroundColor = UIColor(hue: 60/360 , saturation: 100/100, brightness: 100/100, alpha: 1)
           
            default: backgroundColor = UIColor.black
            
            }
        }
    }
}
    

    
